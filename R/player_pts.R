#' A NBA player filter function
#'
#' This function allows you to return the maximum points scored by each player within a season year
#' @param year indicates the year from the season where a player scores the highest during that season
#' @keywords points scored by each player
#' @export
#' @examples
#' player_pts()


player_pts <- function(year) {
  seasons_year <- filter(stats_data, Year == year)
  return(filter(seasons_year, PTS == max(seasons_year$PTS)))
}
