SAD.simple <- function(x) {
    mean.x <- base::mean(x)
    abs.deviation <- base::abs(x - mean.x)
    sad <- base::sum(abs.deviation)
    return(sad)
}

SAD <- aggregatingFunction1 (SAD.simple)
