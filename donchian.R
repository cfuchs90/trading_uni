library(quantstrat)
library(quantmod)


currency("USD")

# set up the financial asset used and the dates

initDate <- "1960-01-01"
startDate <- "1960-01-02"
endDate <- "2019-01-01"

getSymbols("^GDAXI", from = startDate, to = endDate)#, from = startDate, to = endDate, adjusted = TRUE)
stock("GDAXI", currency="USD", multiplier = 1)
colnames(GDAXI) <- c("Open", "High", "Low", "Close", "Volume", "Adjusted")
GDAXI <- na.omit(GDAXI)
#av_tr <- ATR(GDAXI, n = 20)
# bla <- DonchianChannel(HL = GDAXI[, 1:2], n = 20)
# Set up initial equity and transaction costs
start_equity <- 1e6
orderSize <- start_equity * 0.02
fees = 2 # round trip fee of 2$
stopp_loss <- 0.02



Sys.setenv(TZ="UTC")

# set up the strategy and portfolio components

rm.strat(donchian_strategy)
donchian_strategy <- "donchian_channel"


initPortf(donchian_strategy, "GDAXI", initDate = initDate)
initAcct(donchian_strategy, portfolios = donchian_strategy, initDate = initDate, initEq = start_equity)
initOrders(portfolio = donchian_strategy, initDate = initDate)
strategy(donchian_strategy, store = TRUE)

# Create the indicator
add.indicator(strategy = donchian_strategy,
              name = "DonchianChannel",
              arguments = list(HL = quote(HLC(mktdata)[, 1:2]),
                               n = 20,
                               include.lag = TRUE
                               ),
              label = "DNC")

#---- Set up the signals ----#
add.signal(donchian_strategy, name = "sigComparison",
           arguments = list(
               columns = c("Close", "high.DNC"),
               relationship = "gt"),
           label = "long" )

add.signal(donchian_strategy, name = "sigComparison",
           arguments = list(
               columns = c("Close", "low.DNC"),
               relationship = "lt"),
           label = "short" )

add.signal(donchian_strategy, name = "sigComparison",
           arguments = list(
               columns = c("Close", "mid.DNC"),
               relationship = "eq"),
           label = "exit" )

#---- Set up the Rules ---- #

# Enter Long
add.rule(donchian_strategy, name = "ruleSignal",
         arguments = list(
             sigcol = "long",
             sigval = TRUE,
             orderside = "long",
             ordertype = "market",
             replace = FALSE,
             orderqty = +orderSize),
         type = "enter",
         label = "EnterLong",
         )

# Enter short
add.rule(donchian_strategy, name = "ruleSignal",
         arguments = list(
             sigcol = "short",
             sigval = TRUE,
             orderside = "short",
             ordertype = "market",
             replace = FALSE,
             orderqty = -orderSize),
         type = "enter",
         label = "EnterShort"
         )

# ---- TODO Exit Signale fixen

# Exit Long
add.rule(donchian_strategy, name = "ruleSignal",
         arguments = list(
             sigcol = 'short',
             sigval = TRUE,
             orderqty = 'all',
             ordertype = 'market',
             replace = TRUE,
             orderside = 'long'),
         type = 'exit'
         )

# Exit Short
add.rule(donchian_strategy, name = "ruleSignal",
         arguments = list(
             sigcol = 'long',
             sigval = TRUE,
             orderqty = 'all',
             ordertype = 'market',
             replace = TRUE,
             orderside = 'short'),
         type = 'exit'
         )
## add.rule(donchian_strategy, name = "ruleSignal",

##          arguments = list(
##              sigcol = "long",
##              sigval = TRUE,
##              orderqty = "all",
##              ordertype = "stoplimit",
##              orderside = "long",
##              tmult = TRUE,
##              threshold = stopp_loss
##          ),
##          type = "exit",
##          label = "ExitLong"
##          )

## # Exit Short
## add.rule(donchian_strategy, name = "ruleSignal",
##          arguments = list(
##              sigcol = "short",
##              sigval = TRUE,
##              orderqty = "all",
##              ordertype = "stoplimit",
##              orderside = "short",
##              tmult = TRUE,
##              threshold = stopp_loss
##          ),
##          type = "exit",
##          label = "ExitShort"

results <- applyStrategy(donchian_strategy, portfolios = donchian_strategy)
getTxns(Portfolio=donchian_strategy, Symbol="GDAXI")
chart.Posn(donchian_strategy, Symbol = "GDAXI", Dates = "2017::")

updatePortf(donchian_strategy)
updateAcct(donchian_strategy)
updateEndEq(donchian_strategy)
## chart.Posn(donchian_strategy, Symbol = 'GDAXI', Dates = '1998::')

trade_stats <- perTradeStats(donchian_strategy,"GDAXI")

