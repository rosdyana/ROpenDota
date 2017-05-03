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

  prefix <- "https://api.opendota.com/api/matches/"

  url <- paste(prefix, match_id, sep = "")

  raw <- getURL(url)

  matchDetails <- fromJSON(raw)

  return(matchDetails)

}
