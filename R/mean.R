mean <- function(...) {
    if (any(is.na(mosaic::mean(...)))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values\n"))
        output <- mosaic::mean(..., na.rm = TRUE)
    } else {
        output <- mosaic::mean(...)
    }
    return(output)
}
