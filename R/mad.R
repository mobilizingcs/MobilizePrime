MAD.simple <- function(x) {
    n <- length(x)
    mad <- SAD.simple(x) / n
    return(mad)
}

MAD <- aggregatingFunction1 (MAD.simple)
