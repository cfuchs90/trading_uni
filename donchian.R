library(quantstrat)
library(quantmod)


currency("USD")

# set up the financial asset used and the dates

initDate <- "1960-01-01"
startDate <- "1960-01-02"
endDate <- "2019-01-01"

getSymbols("^GSPC", from = startDate, to = endDate)#, from = startDate, to = endDate, adjusted = TRUE)
stock("GSPC", currency="USD", multiplier = 1)
colnames(GSPC) <- c("Open", "High", "Low", "Close", "Volume", "Adjusted")
GSPC <- na.omit(GSPC)
#av_tr <- ATR(GSPC, n = 20)
# bla <- DonchianChannel(HL = GSPC[, 1:2], n = 20)
# Set up initial equity and transaction costs
start_equity <- 1e6
orderSize <- start_equity * 0.02
fee = 2 # Transaction fee of $2
stopp_loss <- 0.02

init_n <- 20
n_opt_range <- 1:200


Sys.setenv(TZ="UTC")


donchian_strategy <- "donchian_channel"

# set up the strategy and portfolio components
rm.strat(donchian_strategy)

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

results <- applyStrategy(donchian_strategy, portfolios = donchian_strategy)
getTxns(Portfolio=donchian_strategy, Symbol="GSPC")
chart.Posn(donchian_strategy, Symbol = "GSPC", Dates = "2017::")

updatePortf(donchian_strategy)
updateAcct(donchian_strategy)
updateEndEq(donchian_strategy)
chart.Posn(donchian_strategy, Symbol = 'GSPC', Dates = '2005::')

trade_stats <- perTradeStats(donchian_strategy,"GSPC")


# Optimize the moving average parameter

add.distribution(donchian_strategy,
                 paramset.label = 'DonchianChannel',
                 component.type = 'indicator',
                 component.label = 'DNC',
                 variable = list(n = n_opt_range),
                 label = 'days_opt')

library(parallel)
detectCores()

if( Sys.info()['sysname'] == "Windows" )
{
    library(doParallel)
    registerDoParallel(cores=detectCores())
} else {
    library(doMC)
    registerDoMC(cores=detectCores())
}



optimization <- apply.paramset(donchian_strategy,
  paramset.label='DonchianChannel',
  portfolio.st=donchian_strategy,
  account.st=donchian_strategy, nsamples=0)

tradeResults <- optimization$tradeStats
idx <- order(tradeResults[,1], tradeResults[,2])
tradeResults <- tradeResults[idx,]
