WordFreqTable <- function (text, top = 1) {
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  if (!is.numeric(top)) {
    stop("top needs to be a number (1, 2, etc.) or a fraction (1/2 or 0.5)")
  }
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  if (top > 1) {
    top.words <- head(d, n = top)
  }
  if (top <= 1) {
    n <- floor(nrow(d) * top)
    top.words <- head(d, n = n)
  } 
  print(top.words)  
}
