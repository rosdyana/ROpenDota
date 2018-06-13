#' Get played heroes for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' playedHeroes <- get_played_heroes(account_id = id_r3m1ck)
#' }
get_played_heroes <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/heroes" ,sep = "")

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
