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
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, sep = "")

  out <- tryCatch({
    fromJSON(url)
  },
  error = function(cond) {
    message(paste("URL does not seem to exist:", url))
    message("Here's the original error message:")
    message(cond)
    # Choose a return value in case of error
    return(NA)
  },
  warning = function(cond) {
    message(paste("URL caused a warning:", url))
    message("Here's the original warning message:")
    message(cond)
    # Choose a return value in case of warning
    return(NULL)
  })

  return(out)

}
