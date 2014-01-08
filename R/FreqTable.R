FreqTable <- function (var1, var2, type = "count") {
  var1 <- deparse(substitute(var1))
  var2 <- deparse(substitute(var2))
  var1.name <- strsplit(var1, "$", fixed = TRUE)[[1]][2]
  var2.name <- strsplit(var2, "$", fixed = TRUE)[[1]][2]
  table.formula <- paste("~", var1, "+", var2)
  tally(as.formula(table.formula), format = type, dnn = c(var1.name,var2.name))
}