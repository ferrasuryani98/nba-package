#' A NBA player filter function
#'
#' This function allows you to return a correlation matrix for all numeric variables in the data within that year
#' @param year indicates the year where we want to convert all numeric variables into a correlation matrix
#' @keywords correlation matrix
#' @export
#' @examples
#' correlation()

correlation <- function(year) {
  seasons_year <- filter(stats_data, Year == year)
  year_converted <- seasons_year[,sapply(seasons_year,is.numeric)]
  return(cor(year_converted))
}

getwd()
