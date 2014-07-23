mean <- function(...) {
    if (is.na(mosaic::mean(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::mean(..., na.rm = TRUE)
    } else {
        output <- mosaic::mean(...)
    }
    return(output)
}
