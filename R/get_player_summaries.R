#' Get Summaries a Specific Player
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' #Get r3m1ck's profile summaries
#' id_r3m1ck = "135474549"
#' playerSummaries <- get_player_summaries(account_id = id_r3m1ck)
#' #Print the in-game name of r3m1ck
#' playerSummaries$profile$personaname
#' }
get_player_summaries <- function(account_id) {

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, sep = "")

  raw <- getURL(url)

  playerSummaries <- fromJSON(raw)

  return(playerSummaries)

}
