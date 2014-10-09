format_lab_title <- function (x) {
    x_lower <- tolower(x)
    x_nospace <- gsub(x = x_lower, pattern = ' ', replacement = "")
    gsub(x = x_nospace, pattern = "-", replacement = "")
}

lab_selector <- function (lab_titles) {
    selection <- menu(lab_titles)
    lab_urls <- paste0('http://www.stat.ucla.edu/~james.molyneux/',
                       format_lab_title(lab_titles),
                       '.html')
    url <- lab_urls[selection]
    return(url)
}

load_lab <- function() {
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
    
    lab_titles <- c(unit_1_titles,
                    unit_2_titles)
    
    url <- lab_selector(lab_titles)
    

    
    page <- paste(readLines(url), 
                  collapse = '\n')

    tf <- tempfile(fileext = ".html")
    writeLines(page, tf)
    rstudio::viewer(tf)
}
