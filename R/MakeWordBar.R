MakeWordBar <- function(text, min.freq=2, top = 100, ...){
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  old.par <- par(no.readonly = TRUE)$mar
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  d <- d[d$freq>=min.freq,]
  if (top >= 1) {
    top.words <- head(d$freq, n = top)
    top.words.names <- head(d$word, n = top)
    largest.word <- max(nchar(as.character(top.words.names)))
    if (largest.word > 8) {
      adj = (largest.word - 7) / 3
      par(mar = old.par + c(adj, 0, 0, 0))
    } else {
      par(mar = old.par)
    }
  }
  if (top < 1) {
    n <- floor(nrow(d) * top)
    top.words <- head(d$freq, n = n)
    top.words.names <- head(d$word, n = n)
    largest.word <- max(nchar(as.character(top.words.names)))
    if (largest.word > 8) {
      adj = (largest.word - 7) / 3
      par(mar = old.par + c(adj, 0, 0, 0))
    } else {
      par(mar = old.par)
    }    
  }  
  barplot(top.words, names.arg=top.words.names, las = 2, ...)
  par(mar = old.par)
}
