max <- function(...) {
    if (is.na(mosaic::max(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::max(..., na.rm = TRUE)
    } else {
        output <- mosaic::max(...)
    }
    return(output)
}
