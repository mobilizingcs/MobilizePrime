MAD.simple <- function(x) {
    mad <- sad(x) / n
    return(mad)
}

MAD <- aggregatingFunction1 (MAD.simple)