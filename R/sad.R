SAD.simple <- function(x, ...) {
    if (is.na(mosaic::mean(x, ...))) {
        missing <- favstats(x, ...)$missing
        warning(paste("The data contains", missing, "missing values"))
        mean.x <- mosaic::mean(x, ..., na.rm = TRUE)
        abs.deviation <- base::abs(x - mean.x)
        sad <- mosaic::sum(abs.deviation, ..., na.rm=TRUE)
        return(sad)
    } else {
        mean.x <- mosaic::mean(x, ...)
        abs.deviation <- base::abs(x - mean.x)
        sad <- mosaic::sum(abs.deviation, ...)
        return(sad)
    }
}
