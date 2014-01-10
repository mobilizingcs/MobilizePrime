WordFreqTable <- function (text, top = 100, format = 'count') {
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
    if (!missing(top) & top > nrow(d)) {
      top = nrow(d)
    }
    n <- top
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
  print(top.words)  
  cat("\n")
  cat("Total number of words shown:", n, '\n')
  cat("Total number of words: ", base::nrow(d))
}