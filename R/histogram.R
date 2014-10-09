### Change default unit of y-axis to 'count'

histogram <- function(..., type='count', fit) {
  if(!missing(fit)) {
    lattice::histogram(..., type = 'density', fit=fit)
  } else {
    lattice::histogram(..., type = type)   
  }
}
