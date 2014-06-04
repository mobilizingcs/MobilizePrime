### Change default unit of y-axis to 'count'

histogram <- function(..., type = 'count') {
  lattice::histogram(..., type = type)
}