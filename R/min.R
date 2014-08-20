min <- function(...) {
    if (any(is.na(mosaic::min(...)))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values\n"))
        output <- mosaic::min(..., na.rm = TRUE)
    } else {
        output <- mosaic::min(...)
    }
    return(output)
}
