#' Get ratings for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' ratings <- get_player_ratings(account_id = id_r3m1ck)
#' }
get_player_ratings <- function(account_id){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/ratings" ,sep = "")

  raw <- getURL(url)

  ratings <- fromJSON(raw)

  return(ratings)

}