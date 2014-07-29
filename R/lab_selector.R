lab_selector <- function (lab_titles) {
    selection <- utils::menu(lab_titles)
    lab_urls <- paste0('http://www.stat.ucla.edu/~james.molyneux/',
                       format_lab_title(lab_titles),
                       '.html')
    url <- lab_urls[selection]
    return(url)
}
