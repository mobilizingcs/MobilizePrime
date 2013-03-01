MobilizeWordBar <-function(text, min.freq=2, ...){
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  d<- d[d$freq>=min.freq,]
  barplot(d$freq, names.arg=d$word, ...)
}
