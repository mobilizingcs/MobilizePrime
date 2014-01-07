MakeWordCloud <- function(text, color="BuGn", min.freq=2, top = 1){
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  if (top >= 1) {
    top.words <- head(d, n = top)
  }
  if (top < 1) {
    n <- floor(nrow(d) * top)
    top.words <- head(d, n = n)
  }
  pal <- brewer.pal(9,color)
  pal <- pal[-(1:4)]
  wordcloud(top.words$word, top.words$freq, random.color=T, min.freq=min.freq, color=pal)
}
