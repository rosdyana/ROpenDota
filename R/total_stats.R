#' Get total status for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' totalStats <- total_stats(account_id = id_r3m1ck)
#' }
total_stats <- function(account_id){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/totals" ,sep = "")

  raw <- getURL(url)

  totalStats <- fromJSON(raw)

  return(totalStats)

}
