do <- function(times) {
  if (times > 500) stop("")
  df <- mosaic::do(n = times, mode = 'data.frame')
  return(df)
}
