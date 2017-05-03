#' Get Hero Benchmarks
#'
#' Get benchmark of single hero
#' @param hero_id Dota2 hero id. You can get the hero id using \code{\link{get_heroes}}.
#' @return GetHeroBenchmark returns a list, which includes the details like gold per minutes, xp per minutes, kills per minutes etc.
#' @export
#' @examples
#' \dontrun{
#' hero_id = "47"
#' viperBenchmarks <- get_hero_benchmarks(hero_id)
#' }
get_hero_benchmarks <- function(hero_id) {

  prefix <- "https://api.opendota.com/api/benchmarks"

  url <- paste(prefix, "/?hero_id=", hero_id, sep = "")

  raw <- getURL(url)

  heroBenchmarks <- fromJSON(raw)

  return(heroBenchmarks)

}
