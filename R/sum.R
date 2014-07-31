sum <- function(...) {
    if (any(is.na(mosaic::sum(...)))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values\n"))
        output <- mosaic::sum(..., na.rm = TRUE)
    } else {
        output <- mosaic::sum(...)
    }
    return(output)
}
