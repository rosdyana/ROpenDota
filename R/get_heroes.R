#' Get total status for specific player id
#' @export
#' @examples
#' \dontrun{
#' heroes <- get_heroes()
#' }
get_heroes <- function(){
  api_delay(proc.time()[3])

  url <- "https://api.opendota.com/api/heroes"

  raw <- getURL(url)

  heroes <- fromJSON(raw)

  return(heroes)

}
