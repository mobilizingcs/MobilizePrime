UpdateStopwords <- function (words, stopword.set = "en") {
  if(class(words) != "character") {
    stop("Words you'd like to add as stopwords should be formatted as strings, i.e.
         c('alpha', 'beta', 'gamma)'")
  }
  if (class(stopword.set) != "character") {
    stop("'stopword.set' should be set to one of the default stopword lists,
         e.g. 'en' or 'SMART', or should be formatted as a string, i.e.
         c('alpha', 'beta', 'gamma)'")
  }
  if ((stopword.set == "en") || (stopword.set == "SMART")) {
    new.stopwords <- append(stopwords(kind = stopword.set), words)
  }  
  else {new.stopwords <- append(stopword.set, words)
  }
  return(new.stopwords)
}