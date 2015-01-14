MakeWordBar <- function(text, min.freq=2, top = 50, format = 'count', col = "steelblue", color,...){
  if(!missing(color)) {
    stop("Remember to use the argument 'col' and not 'color'.")
  }
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  if (!missing(format) & (format != 'count' & format != 'percent')) {
    stop("invalid 'format' argument. 'format' must either be 'count' or 'percent'")
  }
  old.par <- par(no.readonly = TRUE)$mar
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  d <- d[d$freq>=min.freq,]
  if (format == 'count') {
    if (!missing(top) & (top <= 0)) {
      stop("'top' must be a number greater than 0")
    }
    top.words <- head(d$freq, n = top)
    top.words.names <- head(d$word, n = top)
    largest.word <- base::max(nchar(as.character(top.words.names)))
    if (largest.word > 8) {
      adj = (largest.word - 7) / 3
      par(mar = old.par + c(adj, 0, 0, 0))
    } else {
      par(mar = old.par)
    }
  }
  if (format == 'percent') {
    if (missing(top)) {
      stop("'top' argument must be specificed when using format = 'percent'")
    }
    if (!missing(top) & (top <= 0 | top > 100 )) {
      stop("'top' must be a number greater than 0 and less than or equal to 100")
    }
    n <- floor(nrow(d) * top/100)
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
  barplot(top.words, names.arg=top.words.names, las = 2, col = col, border = "white", ...)
  par(mar = old.par)
}
