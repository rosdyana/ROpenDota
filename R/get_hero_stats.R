#' Get hero stats
#' @import RCurl
#' @import jsonlite
#' @export
#' @examples
#' \dontrun{
#' heroStats <- get_hero_stats()
#' }
get_hero_stats <- function(){
  api_delay(proc.time()[3])

  url <- "https://api.opendota.com/api/heroStats"

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
