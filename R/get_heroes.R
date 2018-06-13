#' Get total status for specific player id
#' @export
#' @examples
#' \dontrun{
#' heroes <- get_heroes()
#' }
get_heroes <- function(){
  api_delay(proc.time()[3])

  url <- "https://api.opendota.com/api/heroes"

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
