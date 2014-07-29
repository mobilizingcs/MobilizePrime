prod <- function(...) {
    if (is.na(mosaic::prod(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::prod(..., na.rm = TRUE)
    } else {
        output <- mosaic::prod(...)
    }
    return(output)
}
