MakeWordCloud <- function(text, col = "BuGn", min.freq=2, top = 100, format = 'count', color){
  # This is to keep the function backward compatible between col and color
  if (!missing(color) & missing(col)) {
    col = color 
  }
  if (class(text)[1]!="VCorpus"){
    stop("Remember to initialize text using initializeText()")
  }
  if (!missing(format) & (format != 'count' & format != 'percent')) {
    stop("invalid 'format' argument. 'format' must either be 'count' or 'percent'")
  }
  tdm <- TermDocumentMatrix(text)
  m <- as.matrix(tdm)
  v <- sort(rowSums(m), decreasing=T)
  d <- data.frame(word=names(v), freq=v, row.names=NULL)
  if (format == 'count') {
    if (!missing(top) & (top <= 0)) {
      stop("'top' must be a number greater than 0")
    }
    top.words <- head(d, n = top)
  }
  if (format == 'percent') {
    if (missing(top)) {
      stop("'top' argument must be specificed when using format = 'percent'")
    }
    if (!missing(top) & (top <= 0 | top > 100 )) {
      stop("'top' must be a number greater than 0 and less than or equal to 100")
    }
    n <- floor(nrow(d) * top/100)
    top.words <- head(d, n = n)
  }
  pal <- brewer.pal(9,col)
  pal <- pal[-(1:4)]
  wordcloud(top.words$word, top.words$freq, random.color=T, min.freq=min.freq, color=pal)
}
