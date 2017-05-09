#' Get ratings for specific player id
#' @param account_id Steam ID
#' @import RCurl
#' @import jsonlite
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' ratings <- get_player_ratings(account_id = id_r3m1ck)
#' }
get_player_ratings <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/ratings" ,sep = "")

  raw <- getURL(url)

  ratings <- fromJSON(raw)

  return(ratings)

}
