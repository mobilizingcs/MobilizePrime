SAD.simple <- function(x) {
    mean.x <- mean(x)
    n <- length(x)
    abs.deviation <- abs(x - mean.x)
    sad <- sum(abs.deviation)
    return(sad)
}

SAD <- aggregatingFunction1 (SAD.simple)