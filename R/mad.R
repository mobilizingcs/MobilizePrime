MAD.simple <- function(x) {
    nas <- length(which(is.na(x)))
    n <- length(x)
    not_na <- n - nas
    mad <- SAD.simple(x) / not_na
    return(mad)
}

MAD <- aggregatingFunction1 (MAD.simple)
