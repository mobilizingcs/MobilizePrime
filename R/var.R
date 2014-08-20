var <- function(...) {
    if (any(is.na(mosaic::var(...)))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values\n"))
        output <- mosaic::var(..., na.rm = TRUE)
    } else {
        output <- mosaic::var(...)
    }
    return(output)
}
