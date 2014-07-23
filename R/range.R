range <- function(...) {
    if (is.na(mosaic::range(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::range(..., na.rm = TRUE)
    } else {
        output <- mosaic::range(...)
    }
    return(output)
}
