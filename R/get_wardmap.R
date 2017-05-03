#' Get ward map for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' wardMap <- get_wardmap(account_id = id_r3m1ck)
#' }
get_wardmap <- function(account_id){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/wardmap" ,sep = "")

  raw <- getURL(url)

  wardMap <- fromJSON(raw)

  return(wardMap)

}
