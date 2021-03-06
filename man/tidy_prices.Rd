% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/tidy_prices.R
\name{tidy_prices}
\alias{tidy_prices}
\title{Formats raw price data.}
\usage{
tidy_prices(x)
}
\arguments{
\item{x}{Raw daily data, as produced by get_prices()}
}
\value{
Returns a data set that's been 'tidied' up for use
by other functions in this package.
}
\description{
Tidies raw prices and returns a tidied, usable data frame.
Raw data should be structured identically to that produced
by get_prices(), as this function depends on that structure.
}
\details{
\code{tidy_prices} produces a data frame that is 'tidy' or
more readily readable by a user and usable by other functions
within this package.
}
\examples{
\dontrun{

sub_comps <- qmjdata::companies[1:2,]
raw_price_data <- get_prices(sub_comps)
prices <- tidy_prices(raw_price_data)

my_companies <- data.frame(ticker=c('GOOG', 'IBM'))
raw_price_data <- get_prices(my_companies)
prices <- tidy_prices(raw_price_data)

}
}
\seealso{
\code{\link{get_prices}}
}

