#' Get Match Details
#'
#' Get details of a single match
#' @param match_id Dota2 match id. You can get them of a specific player using \code{\link{get_matches}}.
#' @return GetMatchDetails returns a list, which includes the details like result, duration and etc.
#' @export
#' @examples
#' \dontrun{
#' match_id = "3114150257"
#' matchDetails <- get_match_details(match_id)
#' }
get_match_details <- function(match_id) {
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/matches/"

  url <- paste(prefix, match_id, sep = "")

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
