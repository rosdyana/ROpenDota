#' Get played heroes for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' playedHeroes <- get_played_heroes(account_id = id_r3m1ck)
#' }
get_played_heroes <- function(account_id){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/heroes" ,sep = "")

  raw <- getURL(url)

  playedHeroes <- fromJSON(raw)

  return(playedHeroes)

}
