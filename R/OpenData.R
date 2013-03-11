OpenData <- function(filename) {
  split <- strsplit(filename, "\\.")[[1]]
  name <- split[1]
  filetype <- split[2]
  if (is.na(filetype)){
    stop("Please provide a full file name specification, with file extension.")
  }
  else {
    if (filetype == "csv") {
      tmp <- read.csv(filename)
      return(tmp)
    }
    else if (filetype == "rda"){
      load(filename)
      return(get(name))
    }
    else if (filetype == "robj"){
      tmp <- dget(filename)
      return(tmp)
    }
    else {
      stop("Your file is not of a supported type for this function")
    }
  }
}