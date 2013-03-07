MakeWordCloud <- function(text, color="BuGn", min.freq=2){
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  pal <- brewer.pal(9,color)
  pal <- pal[-(1:4)]
  wordcloud(d$word, d$freq, random.color=T, min.freq=min.freq, color=pal)
}
