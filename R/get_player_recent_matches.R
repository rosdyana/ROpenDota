#' Get recent matches for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' recentMatches <- get_recent_matches(account_id = id_r3m1ck)
#' }
get_recent_matches <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/recentMatches",sep = "")

  raw <- getURL(url)

  recentMatches <- fromJSON(raw)

  return(recentMatches)

}
