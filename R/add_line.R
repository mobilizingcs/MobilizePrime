add_line <- function(units = "native") {
    trellis.focus("panel", 1, 1)
    cat("Select 2 data points to draw a line through: \n")
    ind1_raw <- grid.locator(unit = "native")
    ind2_raw <- grid.locator(unit = "native")
    ind1 <- as.numeric(ind1_raw)
    ind2 <- as.numeric(ind2_raw)    
    b <- (ind2[2] - ind1[2])/(ind2[1] - ind1[1])
    a <- ind1[2] - b*ind1[1]
    ladd(panel.abline(a=a, b=b))
    cat("Equation of the line: \n")
    cat("y = ", b, "* x + ", a)
}
add_line()
