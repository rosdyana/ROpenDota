#' Get played with for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' playedWith <- get_played_with(account_id = id_r3m1ck)
#' }
get_played_with <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/peers" ,sep = "")

  raw <- getURL(url)

  playedWith <- fromJSON(raw)

  return(playedWith)

}
