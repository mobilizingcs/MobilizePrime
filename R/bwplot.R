bwplot <- function(...) {
    lattice::bwplot(..., panel = function (x, ...) {
        panel.bwplot(x, pch = "|", ...)
    })
}