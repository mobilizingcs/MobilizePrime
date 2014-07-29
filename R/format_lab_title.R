format_lab_title <- function (x) {
    x_lower <- tolower(x)
    x_nospace <- gsub(x = x_lower, pattern = ' ', replacement = "")
    gsub(x = x_nospace, pattern = "-", replacement = "")
}