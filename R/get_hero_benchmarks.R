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
  api_delay(proc.time()[3])

  prefix <- "https://api.opendota.com/api/benchmarks"

  url <- paste(prefix, "/?hero_id=", hero_id, sep = "")

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
