#' Daily returns for a company enlisted in the Dhaka Stock Exchange
#'
#' This function returns the daily return for any company enlisted in the Dhaka Stock Exchange in any year between 2005 and 2015.
#'
#' @param id The vector containing closing price for any company
#' @return Vector containing the daily returns of the company
#' @author Syed M. Fuad
#' @details This function takes a vector containing the closing price and returns the daily returns.
#' @seealso \code{length}
#' @export

dailyret <- function(id, summarize = FALSE){
  n <- length(id)
  ret <- (id[2:n] - id[1:(n-1)])/(id[1:(n-1)])
  return(ret)
}
