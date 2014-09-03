do <- function(times) {
  df <- mosaic::do(n = times, mode = 'data.frame')
  return(df)
}