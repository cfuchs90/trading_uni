# ----- IMPORTANT -----
# Please set the working directory to the current directory using setwd()
# before running the script

# parameter 11

# Setup cpde taken from
if (!require("quantstrat")) {
    if(!require("devtools")) {
        install.packages("devtools")
        require(devtools)
    }
    install_github("braverock/blotter") # dependency
    install_github("braverock/quantstrat")
}

## install.packages("lattice")
## install.packages("quantmod")
## install.packages("xts")
## install.packages("xtable")
## install.packages("lubridate")
## install.packages("fBasics")

library(quantstrat)
library(lattice)
library(quantmod)
library(xts)
library(xtable)
library(lubridate)
library(fBasics)
options(scipen=999)

options(repr.plot.width = 6, repr.plot.height = 4)
currency("USD")

# set up the financial asset and the dates

initDate <- "1990-01-01"
startDate <- "1990-01-01"
endDate <- "2018-12-31"

getSymbols("AAPL", from = startDate, to = endDate)
AAPL <- na.omit(AAPL)
colnames(AAPL) <- c('Open', 'High', 'Low', 'Close', 'Volume', 'Adjusted')

# Set up initial equity and transaction costs
start_equity <- 1e6
orderSize <- start_equity * 0.02
fee = -10 # Transaction fee of $2
stopp_loss <- 0.02

options(repr.plot.width = 6, repr.plot.height = 4)
init_n <- 11


Sys.setenv(TZ="UTC")


donchian_strategy <- "donchian-channel"
rm.strat(donchian_strategy)

stock("AAPL", currency="USD", multiplier = 1)
strategy(donchian_strategy, store = TRUE)
initPortf(donchian_strategy, "AAPL", initDate = initDate)
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
             TxnFees = fee,
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
             TxnFees = fee,
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

results <- applyStrategy(donchian_strategy, portfolios = donchian_strategy)
getTxns(Portfolio=donchian_strategy, Symbol="AAPL")

updatePortf(donchian_strategy)
updateAcct(donchian_strategy)
updateEndEq(donchian_strategy)
chart.Posn(donchian_strategy, Symbol = 'AAPL', Dates = '2016::')
#chart.Posn(donchian_strategy, Symbol = 'AAPL', Dates = '2000::2010')

trade_stats <- perTradeStats(donchian_strategy,"AAPL")

tstats = t(tradeStats(donchian_strategy, 'AAPL'))
xtable(tstats)

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

initPortf("buyHold", symbols = "AAPL", initDate = initDate)
initAcct('buyHold', portfolios = 'buyHold', initDate = initDate,
         initEq = start_equity)

CurrentDate <- time(getTxns(Portfolio = donchian_strategy,
                            Symbol = "AAPL"))[2]
equity = getEndEq("buyHold", CurrentDate)
ClosePrice <- as.numeric(Cl(AAPL[CurrentDate,]))
addTxn("buyHold", Symbol = "AAPL",
       TxnDate = CurrentDate, TxnPrice = ClosePrice,
       TxnQty = orderSize, TxnFees = 0)

LastDate <- last(time(AAPL))
LastPrice <- as.numeric(Cl(AAPL[LastDate,]))
addTxn("buyHold", Symbol = "AAPL",
       TxnDate = LastDate, TxnPrice = LastPrice,
       TxnQty = -orderSize, TxnFees = 0)

updatePortf(Portfolio = "buyHold")
updateAcct(name = "buyHold")
updateEndEq(Account = "buyHold")
chart.Posn("buyHold", Symbol = "AAPL")

tstats_buyhold = t(tradeStats('buyHold', 'AAPL'))
tstats_buyhold
xtable(tstats_buyhold)

#Performance Summary
returns = PortfReturns(donchian_strategy)
colnames
#Performance Summary
returns = PortfReturns(donchian_strategy)
colnames(returns) = 'Dochian Strategy'
## returns <- returns/100
charts.PerformanceSummary(returns, colorset = 'darkblue')
#
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
buyhold_per_trade_stats <- t(perTradeStats('buyHold',"AAPL"))
buyhold_per_trade_stats

# Total returns over the observed time perios
buyhold_total_return <- (as.numeric(tstats_buyhold[length(tstats_buyhold)]) / start_equity) * 100
buyhold_total_return
strategy_total_return <- (as.numeric(tstats[length(tstats)]) / start_equity) * 100
strategy_total_return

times_market <- as.numeric(tstats[length(tstats)]) / as.numeric(tstats_buyhold[length(tstats_buyhold)])
times_market

#---- Relative Performance -----
chart.RelativePerformance(returns, return_buyhold,
                          colorset = c("red", "blue"), lwd = 2,
                          legend.loc = "topleft")

#---- Fama French 3 Factor Model ----
ff_factors <- read.csv2("./ff_factors.csv", sep = ',')

# change the columns to the correct data type
ff_factors$Mkt.RF <- as.numeric(as.character(ff_factors$Mkt.RF))
ff_factors$SMB <- as.numeric(as.character(ff_factors$SMB))
ff_factors$HML <- as.numeric(as.character(ff_factors$HML))
ff_factors$RF <- as.numeric(as.character(ff_factors$RF))

# Convert the first column to a date format
colnames(ff_factors)[1] <- "Date"
ff_factors$Date <-  ymd(ff_factors$Date)
ff_date <- ff_factors$Date
ff_factors <- ff_factors[, -1]

# Rename the columns
# MktRf = Market Return above Risk Free Rate
# SMB = Size Factor
# HL = Book Value/Market Value
# RF = Risk Free Rate
colnames(ff_factors) <- c("MktRf", "SMB", "HL", "RF")

# Create an XTS Object
ff_factors <- xts(ff_factors, ff_date)
ff_factors <- ff_factors["1990/20181228"]
## ff_factors <- ff_factors/100

excess_returns = PortfReturns(donchian_strategy) - ff_factors$RF
# FF 3 Factor Model
model <- lm(excess_returns ~ MktRf + SMB + HL, data=ff_factors)
summary(model)
xtable(model, digits = c(0, 11, 11, 4, 4))

# Portfolio Summary Graphs
strategy_pf <- getPortfolio(donchian_strategy)
xyplot(strategy_pf$summary, type = "h", col = 4)

buyhold_pf <- getPortfolio("buyHold")
xyplot(buyhold_pf$summary, type = "h", col = 4)

# Summary statistics of Buy & Hold strategy
buyhold_summary <- basicStats(return_buyhold * 100)
xtable(buyhold_summary, digits = c(0, 5))


# Summary statistics of the Donchian Channel strategy
strategy_summary <- basicStats(returns * 100)
xtable(strategy_summary, digits = c(0, 5))

# Tstats table for both
tstats_table_both <- cbind(tstats, tstats_buyhold)
xtable(tstats_table_both)

# Chart the whole series
initDate <- "1980-01-01"
startDate <- "1980-01-01"
endDate <- "2018-12-31"

getSymbols("AAPL", from = startDate, to = endDate)
AAPL <-