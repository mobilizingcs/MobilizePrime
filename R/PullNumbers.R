PullNumbers <- function(variable) {
  variable <- as.character(variable)
  numbers <- gsub("[^0123456789\\.]", "", variable)
  return(as.numeric(numbers))
}