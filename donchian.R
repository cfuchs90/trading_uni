library(quantstrat)
library(quantmod)


currency("USD")

# set up the financial asset used and the dates

initDate <- "1960-01-01"
startDate <- "1960-01-02"
endDate <- "2019-01-01"

getSymbols("^GSPC", from = startDate, to = endDate, adjusted = TRUE)
stock("GSPC", currency="USD", multiplier = 1)
# bla <- DonchianChannel(HL = GSPC[, 1:2], n = 20)
# Set up initial equity and transaction costs
start_equity <- 1e6
fees = 2 # round trip fee of 2$

Sys.setenv(TZ="UTC")

# set up the strategy and portfolio components
rm.strat(donchian_strategy)
donchian_strategy <- "donchian_channel"


initPortf(donchian_strategy, "GSPC", initDate = initDate)
initAcct(donchian_strategy, portfolios = donchian_strategy, initDate = initDate, initEq = start_equity)
initOrders(portfolio = donchian_strategy, initDate = initDate)
strategy(donchian_strategy, store = TRUE)

# Create the indicator
add.indicator(strategy = donchian_strategy,
              name = "DonchianChannel",
              arguments = list(HL = quote(HLC(mktdata)[, 1:2]),
                               n = 20
                               ),
              label = "DNC")

#---- Set up the signals ----#
add.signal(donchian_strategy, name = sigComparison,
           arguments = list(
               columns = c('Close', 'high'),
               relationship = "gt"),
           label = 'AboveChannel' )

add.signal(donchian_strategy, name = sigComparison,
           arguments = list(
               columns = c('Close', 'low'),
               relationship = "lt"),
           label = 'BelowChannel' )

#---- Set up the Rules ---- #

# Enter Long
add.rule(donchian_strategy, name = 'ruleSignal',
         arguments = list(
             sigcol = c("Close", "AboveChannel"),
             sigval = TRUE,
             orderqty = orderSize,
             ordertype = 'market',
             orderside = 'long'),
         type = 'enter'
         )

# Enter Short
add.rule(donchian_strategy, name = 'ruleSignal',
         arguments = list(
             sigcol = c("Close", "BelowChannel"),
             sigval = TRUE,
             orderqty = orderSize,
             ordertype = 'market',
             orderside = 'short'),
         type = 'enter'
         )

# ---- TODO Exit Signale festlegen und implementieren ----
