### Includes 'auto.key = TRUE' when !missing(groups) = TRUE ###
bargraph <- function (x, data = parent.frame(), groups, horizontal = FALSE, 
                       origin = 0, ylab = ifelse(horizontal, "", "Frequency"), xlab = ifelse(horizontal, 
                                                                                             "Frequency", ""), subset, ...) 
{
  haveGroups <- !missing(groups)
  sgroups <- substitute(groups)
  formula <- paste("~", deparse(rhs(x)))
  if (!is.null(condition(x))) 
    formula <- paste(formula, "+", deparse(condition(x)))
  if (haveGroups) 
    formula <- paste(formula, "+", sgroups)
  formula <- as.formula(formula)
  if (missing(subset)) {
    xtab <- as.data.frame(xtabs(formula, data = data))
  }
  else {
    xtab <- as.data.frame(do.call(xtabs, list(formula, data = data, 
                                              subset = substitute(subset))))
  }
  lastvar = names(xtab)[ncol(xtab)]
  if (horizontal) {
    if (!is.null(condition(x))) {
      formula <- as.formula(paste(deparse(rhs(x)), " ~ ", 
                                  lastvar, " | ", deparse(condition(x))))
    }
    else {
      formula <- as.formula(paste(deparse(rhs(x)), " ~ ", 
                                  lastvar))
    }
  }
  else {
    if (!is.null(condition(x))) {
      formula <- as.formula(paste(lastvar, " ~", deparse(rhs(x)), 
                                  "|", deparse(condition(x))))
    }
    else {
      formula <- as.formula(paste(lastvar, " ~", deparse(rhs(x))))
    }
  }
  if (haveGroups) 
    barchart(formula, data = xtab, groups = eval(sgroups), auto.key = TRUE,
             origin = origin, ylab = ylab, xlab = xlab, ...)
  else barchart(formula, data = xtab, origin = origin, ylab = ylab, 
                xlab = xlab, ...)
}