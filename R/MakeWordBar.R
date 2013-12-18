MakeWordBar <- function(text, min.freq=2, ...){
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  old.par <- par(no.readonly = TRUE)$mar
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  d<- d[d$freq>=min.freq,]
  largest.word <- max(nchar(as.character(d$word)))
  if (largest.word > 8) {
    adj = (largest.word - 7) / 3
    par(mar = old.par + c(adj, 0, 0 , 0))
  }
  barplot(d$freq, names.arg=d$word, las = 2, ...)
  par(mar = old.par)
}
