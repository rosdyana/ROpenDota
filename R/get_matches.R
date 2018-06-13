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
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/matches/?limit=", limit ,sep = "")

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
