sum <- function(...) {
    if (is.na(mosaic::sum(...))) {
        missing <- favstats(...)$missing
        warning(paste("The data contains", missing, "missing values"))
        output <- mosaic::sum(..., na.rm = TRUE)
    } else {
        output <- mosaic::sum(...)
    }
    return(output)
}

data(cdc)
sum(~height, data=cdc)
