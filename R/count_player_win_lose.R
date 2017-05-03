#' Counting win or lose for specific player id
#' @param account_id Steam ID
#' @export
#' @examples
#' \dontrun{
#' #Count r3m1ck's win and lose summaries
#' id_r3m1ck = "135474549"
#' count_win_lose <- count_player_win_lose(account_id = id_r3m1ck)
#' }
count_player_win_lose <- function(account_id){

  prefix <- "https://api.opendota.com/api/players/"

  url <- paste(prefix, account_id, "/wl",sep = "")

  raw <- getURL(url)

  count_win_lose <- fromJSON(raw)

  return(count_win_lose)

}
