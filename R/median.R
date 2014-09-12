median <- function(...) {
    if (any(is.na(mosaic::median(...)))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values\n"))
        output <- mosaic::median(..., na.rm = TRUE)
    } else {
        output <- mosaic::median(...)
    }
    return(output)
}
