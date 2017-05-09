# OpenDota API rules : Limit 1 call per second
api_delay <- function(start_time, wait_time = 1.00) {
  end_time <- proc.time()[3]
  tot_time <- end_time - start_time

  if (tot_time <= wait_time) {
    Sys.sleep(wait_time - tot_time)
  }
}
