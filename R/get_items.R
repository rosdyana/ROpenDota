#' Get Dota2 Item List
#'
#' Get a list of in-game items
#' @return get_items returns a list of in-game items, which include the columns of name, cost, secret_shop, side_shop, recipe and localized name.
#' @export
#' @examples
#' \dontrun{
#' itemList <- get_items()
#' head(itemList)
#' }
get_items <- function(){
  api_delay(proc.time()[3])

  url <- "https://api.steampowered.com/IEconDOTA2_570/GetGameItems/V001/?key=DE8D93353F9A4FE0126D22B55596B20F"

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
