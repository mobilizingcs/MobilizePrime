sd <- function(...) {
    if (is.na(mosaic::sd(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::sd(..., na.rm = TRUE)
    } else {
        output <- mosaic::sd(...)
    }
    return(output)
}
