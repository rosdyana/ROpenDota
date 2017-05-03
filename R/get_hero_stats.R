#' Get hero stats
#' @export
#' @examples
#' id_r3m1ck = "135474549"
#' heroStats <- get_hero_rankings(account_id = id_r3m1ck)
get_hero_stats <- function(account_id){

  url <- "https://api.opendota.com/api/heroStats"

  raw <- getURL(url)

  heroStats <- fromJSON(raw)

  return(heroStats)

}
