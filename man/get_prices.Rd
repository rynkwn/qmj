% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/get_prices.R
\name{get_prices}
\alias{get_prices}
\title{Grab daily prices and price returns for the previous two years.}
\usage{
get_prices(companies = qmjdata::companies)
}
\arguments{
\item{companies}{A data frame of company names and tickers.}
}
\value{
A matrix-like object containing relevant price data. The rows
of the matrix are dates in the international standard of YYYY-MM-DD. Each
column specifies what data it covers in the form of TICKER.DATA, with the
exception of price returns, which are stored as pret.#, where # refers to
the the i-th company given.

The first company calculated is always the S&P 500, and its price return
column is simply 'pret'.
}
\description{
\code{get_prices} grabs price-related data for a given data frame
of companies and returns a matrix-like object containing relevant
price data.
}
\details{
\code{get_prices} is also able to write .RData files
to the user's temporary directory. If canceled partway through,
the function is able to find and re-read this data to resume progress.
Once complete, the function deletes all used temporary data.

Parameter defaults to provided data set of companies if empty.
}
\examples{
\dontrun{

## If no data frame is provided,
## the default is the package's
## companies data set.

get_prices()

## If we want to get information
## for a specific data frame of
## companies, called comps

get_prices(comps)

## If we then decide to quit the
## process partway through, and
## then resume downloading,
## the function usage is identical.

get_prices(comps)

## If we quit the process partway
## through, and then decide to clean
## the data to start from scratch.

clean_downloads(comps)
get_prices(comps)

## The raw price data is difficult
## to use, so we'll clean the data
## for future use.

price_data <- get_prices(comps)
prices <- tidy_prices(price_data)

}
}
\seealso{
\code{\link{get_info}}

\code{\link{clean_downloads}}

\code{\link{tidy_prices}}
}

