#' Get heroes rankings for specific player id
#' @param hero_id Hero Id
#' @export
#' @examples
#' \dontrun{
#' viperId = "47"
#' topPlayer <- top_player_by_hero(hero = viperId)
#' }
top_player_by_hero <- function(hero_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/rankings/?hero_id="

  url <- paste(prefix, hero_id ,sep = "")

  raw <- getURL(url)

  topPlayer <- fromJSON(raw)

  return(topPlayer)

}
