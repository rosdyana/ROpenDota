#' Get hero stats
#' @import RCurl
#' @import jsonlite
#' @export
#' @examples
#' \dontrun{
#' heroStats <- get_hero_stats()
#' }
get_hero_stats <- function(){

  url <- "https://api.opendota.com/api/heroStats"

  raw <- getURL(url)

  heroStats <- fromJSON(raw)

  return(heroStats)

}
