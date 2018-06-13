#' Get heroes rankings for specific player id
#' @param hero_id Hero Id
#' @export
#' @examples
#' \dontrun{
#' viperId = "47"
#' topPlayer <- top_player_by_hero(hero = viperId)
#' }
top_player_by_hero <- function(hero_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/rankings/?hero_id="

  url <- paste(prefix, hero_id ,sep = "")

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
