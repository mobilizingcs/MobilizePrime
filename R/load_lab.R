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
                       "Unit 2 - Lab 12")
    
    lab_titles <- c(unit_1_titles,
                    unit_2_titles)
    
    url <- lab_selector(lab_titles)
    

    
    page <- paste(readLines(url), 
                  collapse = '\n')

    tf <- tempfile(fileext = ".html")
    writeLines(page, tf)
    rstudio::viewer(tf)
}

load_lab()
