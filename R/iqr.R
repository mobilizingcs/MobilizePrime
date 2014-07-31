IQR <- function(...) {
    output <- tryCatch(mosaic::iqr(...), error=function(e) mosaic::iqr(..., na.rm=TRUE)); 
    missing <- favstats(...)$missing; 
    warning(paste("The data contains", missing, "missing values\n"))    
    return(output)
}

iqr <- function(...) {
    output <- tryCatch(mosaic::iqr(...), error=function(e) mosaic::iqr(..., na.rm=TRUE)); 
    missing <- favstats(...)$missing; 
    warning(paste("The data contains", missing, "missing values\n"))    
    return(output)
}
