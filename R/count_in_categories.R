#' Count in categories for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' countMe <- count_in_categories(account_id = id_r3m1ck)
#' }
count_in_categories <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/counts" ,sep = "")

  readlines <- readLines(url, warn = FALSE)

  raw <- getURL(readlines)

  countMe <- fromJSON(raw)

  return(countMe)

}
