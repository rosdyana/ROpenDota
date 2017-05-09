#' Get heroes rankings for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' id_r3m1ck = "135474549"
#' rankings <- get_hero_rankings(account_id = id_r3m1ck)
#' }
get_hero_rankings <- function(account_id){
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/rankings" ,sep = "")

  raw <- getURL(url)

  rankings <- fromJSON(raw)

  return(rankings)

}
