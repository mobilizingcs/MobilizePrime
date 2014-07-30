SAD.simple <- function(x) {
    mean.x <- base::mean(x, na.rm = TRUE)
    abs.deviation <- base::abs(x - mean.x)
    sad <- base::sum(abs.deviation, na.rm = TRUE)
    return(sad)
}

SAD <- aggregatingFunction1 (SAD.simple)
