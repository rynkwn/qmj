#' Exploring a quality minus junk approach to evaluating stocks
#'
#' The \strong{qmj} package calculates quality scores for the companies 
#' in the Russell 3000 Index based on the paper 
#' \emph{Quality Minus Junk} by Clifford Asness, Andrea Frazzini, 
#' and Lasse Pedersen.
#' 
#' Quality is a scaled measure of a company's profitability, growth, 
#' safety, and payouts. By using publicly available data for 
#' company balance sheets, income statements, and cash flows, \strong{qmj} 
#' calculates relative quality z-scores for companies. 
#' 
#' All functions and datasets are documented, and are freely 
#' available for use.
#' Index of datasets:
#' \itemize{
#'  \item companies - A data frame of publicly traded companies in the Russell 
#'  3000 Index.
#'  \item financials - Financial statements for companies in the 
#'  companies dataset.
#'  \item prices - Daily prices and price returns for the past two years for
#'  each company.
#'  \item quality - Most recently measured quality z-scores and component scores.
#' }
#' 
#' @references
#' Asness, Clifford S., Andrea Frazzini, and Lasse H. Pedersen. 'Quality Minus Junk.' AQR (2013)
#' 
#' @docType package
#' @name qmj
NULL 
