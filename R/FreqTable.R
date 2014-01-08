FreqTable <- function (var1, var2, format = "count", totals = TRUE) {
  if(missing(var2)) {
    var1 <- deparse(substitute(var1))
    var1.name <- strsplit(var1, "$", fixed = TRUE)[[1]][2]
    table.formula <- paste("~", var1)
    tally(as.formula(table.formula), format = format, margins = totals, dnn = c(var1.name))
  } else {
    var1 <- deparse(substitute(var1))
    var2 <- deparse(substitute(var2))
    var1.name <- strsplit(var1, "$", fixed = TRUE)[[1]][2]
    var2.name <- strsplit(var2, "$", fixed = TRUE)[[1]][2]
    table.formula <- paste("~", var1, "+", var2)
    tally(as.formula(table.formula), format = format, margins = totals, dnn = c(var1.name,var2.name))
  }
}