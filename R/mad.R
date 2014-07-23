MAD.simple <- function(x) {
    mad <- SAD(x) / n
    return(mad)
}

MAD <- aggregatingFunction1 (MAD.simple)