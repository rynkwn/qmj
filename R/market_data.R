#' Collects all relevant market data (growth, payout, profitability, and safety) and orders companies
#' by descending quality.
#'
#' Calculates market growth, payouts, safety, and profitability of our list of companies
#' for later processing.
#' @param x A dataframe of company names and tickers.
#' @param financials a formatted data frame containing financial information for the given companies.
#' @param daily A dataframe containing the daily market closing prices and returns. 
#' @examples
#' data(companies)
#' data(financials)
#' market_data(companies, financials)
#' @export

market_data <- function(x, financials, daily){
  if(length(x$ticker) == 0) {
    stop("first parameter requires a ticker column.")
  }
  if(length(which(financials$TCSO < 0))) {
    stop("Negative TCSO exists.")
  }
  profitability <- market_profitability(x, financials)$profitability
  growth <- market_growth(x, financials)$growth
  safety <- market_safety(x, financials, daily)$safety
  payouts <- market_payout(x, financials)$payouts
  quality <- profitability + growth + safety + payouts
  
  name <- x$name
  ticker <- x$ticker
  marketdata <- data.frame(name = name, 
                           ticker = ticker, 
                           profitability = profitability, 
                           growth = growth, 
                           safety = safety, 
                           payouts = payouts, 
                           quality = quality)
  marketdata <- arrange(marketdata, desc(quality))
}