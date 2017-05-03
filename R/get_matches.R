#' Get Matches for specific player id
#' @param account_id Steam ID
#' @param limit matches limit
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' limit = 5
#' matches <- get_matches(account_id = id_r3m1ck, limit = limit)
#' }
get_matches <- function(account_id, limit){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/matches/?limit=", limit ,sep = "")

  raw <- getURL(url)

  matches <- fromJSON(raw)

  return(matches)

}
