
if (!require("quantstrat")) {
    if(!require("devtools")) {
        install.packages("devtools")
        require(devtools)
    }
    install_github("braverock/blotter") # dependency
    install_github("braverock/quantstrat")
}

install.packages("quantmod")

library(quantstrat)
library(quantmod)


currency("USD")

# set up the financial asset used and the dates

initDate <- "1980-01-01"
startDate <- "1980-01-01"
endDate <- "1989-12-31"

getSymbols("AAPL", from = startDate, to = endDate)#, from = startDate, to = endDate, adjusted = TRUE)
stock("AAPL", currency="USD", multiplier = 1)
AAPL <- na.omit(AAPL)
# Set up initial equity and transaction costs
start_equity <- 1e6
orderSize <- start_equity * 0.02
fee = -10 # Transaction fee of $10
stopp_loss <- 0.02

init_n <- 20
n_opt_range <- 1:100


Sys.setenv(TZ="UTC")


donchian_strategy <- "donchian-channel"

# set up the strategy and portfolio components
rm.strat(donchian_strategy)

strategy(donchian_strategy, store = TRUE)
initPortf(donchian_strategy, "AAPL", initDate = initDate)
initAcct(donchian_strategy,  portfolios = donchian_strategy,
         initDate = initDate, initEq = start_equity,
         currency = 'USD')

initOrders(donchian_strategy, initDate = initDate)

addPosLimit(
    portfolio = donchian_strategy,
    symbol = "AAPL",
    timestamp = initDate,
    maxpos = orderSize)

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
             osFUN = osMaxPos,
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
             osFUN = osMaxPos,
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
             TxnFees = fee,
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
             TxnFees = fee,
             orderside = 'short'),
         type = 'exit'
         )



# Optimize the parameter

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

max_calmar_parameter <- which.max(tradeResults$Profit.To.Max.Draw)
max_calmar_parameter

