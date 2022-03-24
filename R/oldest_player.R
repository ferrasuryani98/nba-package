#' A NBA player filter function
#'
#' This function allows you to return the oldest player's information within a particular season
#' @param year indicates the year where we want to extract the oldest player's information
#' @keywords oldest player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(year) {
  seasons_year <- filter(stats_data, Year == year)
  max_age <- filter(seasons_year, Age == max(seasons_year$Age))
  return(top_n(max_age,1))
}
