### Change default unit of y-axis to 'count'

histogram <- function(..., fit) {
  if (missing(fit)) {
    lattice::histogram(..., type = 'count')
  } else {
    lattice::histogram(..., fit = fit)
  }
}
