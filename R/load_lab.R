load_lab <- function(lab) {
  unit_1_titles <- c("Unit 1 - Lab 1",
                     "Unit 1 - Lab 2",
                     "Unit 1 - Lab 3",
                     "Unit 1 - Lab 4",
                     "Unit 1 - Lab 5",
                     "Unit 1 - Lab 6",
                     "Unit 1 - Lab 7a",
                     "Unit 1 - Lab 7b",
                     "Unit 1 - Lab 8",
                     "Unit 1 - Lab 9",
                     "Unit 1 - Lab 10")
  unit_2_titles <- c("Unit 2 - Lab 1",
                     "Unit 2 - Lab 2",
                     "Unit 2 - Lab 3",
                     "Unit 2 - Lab 4",
                     "Unit 2 - Lab 5",
                     "Unit 2 - Lab 6",
                     "Unit 2 - Lab 7",
                     "Unit 2 - Lab 7",
                     "Unit 2 - Lab 8",
                     "Unit 2 - Lab 9",
                     "Unit 2 - Lab 10",
                     "Unit 2 - Lab 11",
                     "Unit 2 - Lab 12",
                     "Unit 2 - Lab 13",
                     "Unit 2 - Lab 14")
  unit_3_titles <- c("Unit 3 - Lab 1",
                     "Unit 3 - Lab 2",
                     "Unit 3 - Lab 3",
                     "Unit 3 - Lab 4",
                     "Unit 3 - Lab 5",
                     "Unit 3 - Lab 6",
                     "Unit 3 - Lab 7")
  unit_4_titles <- c("Unit 4 - Lab 1",
                     "Unit 4 - Lab 2",
                     "Unit 4 - Lab 3",
                     "Unit 4 - Lab 4",
                     "Unit 4 - Lab 5",
                     "Unit 4 - Lab 6",
                     "Unit 4 - Lab 7",
                     "Unit 4 - Lab 8")
  
  lab_titles <- c(unit_1_titles,
                  unit_2_titles,
                  unit_3_titles,
                  unit_4_titles)
  
  if (!missing(lab)) {
    url <- .lab_selector(lab=lab, lab_titles=lab_titles)
  }
  if (missing(lab)) {
    url <- .lab_selector(lab=NULL, lab_titles=lab_titles)
  }
  
  
  page <- paste(readLines(curl::curl(url, "r")),
                collapse = '\n')
  
  tf <- tempfile(fileext = ".html")
  writeLines(page, tf)
  rstudio::viewer(tf)
}

#' @rdname load_lab
load_labs <- function(lab) {
  load_lab(lab)
}

.format_lab_title <- function (x) {
  x_lower <- tolower(x)
  x_nospace <- gsub(x = x_lower, pattern = ' ', replacement = "")
  clean_title <- gsub(x = x_nospace, pattern = "-", replacement = "")
  clean_title
}

.lab_selector <- function (lab, lab_titles) {
  lab_urls <- paste0('https://web.ohmage.org/mobilize/resources/ids/labs/',
                     .format_lab_title(lab_titles), '.html')
  if (is.null(lab)) {
    selection <- menu(lab_titles)
    url <- lab_urls[selection]
  }
  if (!is.null(lab)) {
    url <- lab_urls[lab]
  }
  return(url)
}
