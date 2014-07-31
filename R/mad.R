MAD.simple <- function(x) {
    nas <- length(which(is.na(x)))
    n <- length(x)
    not_na <- n - nas
    mad <- SAD.simple(x) / not_na
    return(mad)
}

MAD <- aggregatingFunction1 (MAD.simple)

x <- 1:10
colors <- read.csv("~/Downloads/Personality Color.csv")
data(cdc)

MAD(x)
MAD(~blue, data = colors)
MAD(~height | gender, data=cdc)