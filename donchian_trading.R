# parameter 54

library(quantstrat)
library(quantmod)
options(scipen=999)

options(repr.plot.width = 6, repr.plot.height = 4)
currency("USD")

                                        # set up the financial asset used and the dates

initDate <- "1990-01-01"
startDate <- "1990-01-01"
endDate <- "2018-12-31"

getSymbols("^GSPC", from = startDate, to = endDate)#, from = startDate, to = endDate, adjusted = TRUE)
GSPC <- na.omit(GSPC)
colnames(GSPC) <- c('Open', 'High', 'Low', 'Close', 'Volume', 'Adjusted')
                                        # Set up initial equity and transaction costs
start_equity <- 1e6
orderSize <- start_equity * 0.02
fee = 2 # Transaction fee of $2
stopp_loss <- 0.02

options(repr.plot.width = 6, repr.plot.height = 4)
init_n <- 54
n_opt_range <- 1:100


Sys.setenv(TZ="UTC")


donchian_strategy <- "donchian_channel"
rm.strat(donchian_strategy)

stock("GSPC", currency="USD", multiplier = 1)
strategy(donchian_strategy, store = TRUE)
initPortf(donchian_strategy, "GSPC", initDate = initDate)
initAcct(donchian_strategy,  portfolios = donchian_strategy,
         initDate = initDate, initEq = start_equity,
         currency = 'USD')

initOrders(donchian_strategy, initDate = initDate)


# Create the indicator
add.indicator(strategy = donchian_strategy,
              name = "DonchianChannel",
              arguments = list(HL = quote(HLC(mktdata)[, 1:2]),
                               n = init_n,
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

results <- applyStrategy(donchian_strategy, portfolios = donchian_strategy)
getTxns(Portfolio=donchian_strategy, Symbol="GSPC")
chart.Posn(donchian_strategy, Symbol = "GSPC", Dates = "2017::")

updatePortf(donchian_strategy)
updateAcct(donchian_strategy)
updateEndEq(donchian_strategy)
chart.Posn(donchian_strategy, Symbol = 'GSPC', Dates = '2005::')

trade_stats <- perTradeStats(donchian_strategy,"GSPC")

tstats = t(tradeStats(donchian_strategy, 'GSPC'))

mk <- mktdata['1990-01-01::2018-12-31']
mk.df <- data.frame(Date=time(mk),coredata(mk))
mk.df

rets <- PortfReturns(donchian_strategy)
rownames(rets) <- NULL
charts.PerformanceSummary(rets/100, colorset=bluefocus)

######## buy and hold test
#the code for this this part was taken from
# tim trice book of quantstrat
#https://timtrice.github.io/

rm.strat("buyHold")

initPortf("buyHold", symbols = "GSPC", initDate = initDate)
initAcct('buyHold', portfolios = 'buyHold', initDate = initDate,
         initEq = start_equity)

CurrentDate <- time(getTxns(Portfolio = donchian_strategy,
                            Symbol = "GSPC"))[2]
equity = getEndEq("buyHold", CurrentDate)
ClosePrice <- as.numeric(Cl(GSPC[CurrentDate,]))
addTxn("buyHold", Symbol = "GSPC",
       TxnDate = CurrentDate, TxnPrice = ClosePrice,
       TxnQty = orderSize, TxnFees = 0)

LastDate <- last(time(GSPC))
LastPrice <- as.numeric(Cl(GSPC[LastDate,]))
addTxn("buyHold", Symbol = "GSPC",
       TxnDate = LastDate, TxnPrice = LastPrice,
       TxnQty = orderSize , TxnFees = 0)

updatePortf(Portfolio = "buyHold")
updateAcct(name = "buyHold")
updateEndEq(Account = "buyHold")
chart.Posn("buyHold", Symbol = "GSPC")

# --- TODO Fix Buy and Hold Trading Statistics
tstats_buyhold = t(tradeStats('buyHold', 'GSPC'))


#Performance Summary
returns = PortfReturns(donchian_strategy)
colnames(returns) = 'Dochian Strategy'
returns <- returns/100
charts.PerformanceSummary(returns/100, colorset = 'darkblue')
#
# ---- TODO Fix PerformanceSummary Plot of Buy and Hold
return_buyhold <- PortfReturns(Account = "buyHold")
colnames(return_buyhold) = 'Buy and Hold'
return_buyhold <- return_buyhold/100
charts.PerformanceSummary(return_buyhold, colorset='darkblue')
#
return_both = cbind(returns, return_buyhold)
charts.PerformanceSummary(return_both, geometric = FALSE,
                           wealth.index = TRUE,
                           main = 'Donchian Channel Strategy vs Market')
#
#
t(perTradeStats('buyHold',"GSPC"))
