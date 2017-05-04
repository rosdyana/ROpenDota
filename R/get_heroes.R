#' Get total status for specific player id
#' @export
#' @examples
#' \dontrun{
#' heroes <- get_heroes()
#' }
get_heroes <- function(){

  url <- "https://api.opendota.com/api/heroes"

  raw <- getURL(url)

  heroes <- fromJSON(raw)

  return(heroes)

}
