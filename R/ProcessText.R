ProcessText <-
function(text, lower=TRUE, removepunctuation=TRUE, removenumbers=TRUE, removewhitespace=FALSE, removestopwords=FALSE, stemwords=FALSE) {
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  if (lower){
    text <- tm_map(text, tolower)
  }
  if (removepunctuation){
    text <- tm_map(text, removePunctuation)
  }
  if (removenumbers){
    text <- tm_map(text, removeNumbers)
  }
  if (removewhitespace){
    text <- tm_map(text, stripWhitespace)
  }
  if (removestopwords){
    text <- tm_map(text, removeWords, stopwords("english"))
  }
  if (stemwords){
    text <- tm_map(text, stemDocument)
  }
  return(text)
}
