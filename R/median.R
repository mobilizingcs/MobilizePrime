median <- function(...) {
    if (is.na(mosaic::median(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::median(..., na.rm = TRUE)
    } else {
        output <- mosaic::median(...)
    }
    return(output)
}
