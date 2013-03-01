\name{processText}
\alias{processText}
\title{
Process text
}
\description{
Process text that has been initialized to work as text in R.
}
\usage{
ProcessText(text, lower = TRUE, removepunctuation = TRUE, removenumbers = TRUE, removewhitespace = FALSE, removestopwords = FALSE, stemwords = FALSE)
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{initializeText}} function.
}
  \item{lower}{
logical. Do you want to convert all the words to lower case? If so, leave the default as \code{TRUE}
}
  \item{removepunctuation}{
logical. Do you want to remove punctuation? If so, leave the default as \code{TRUE}
}
  \item{removenumbers}{
logical. Do you want to remove numbers? If so, leave the default as \code{TRUE}
}
  \item{removewhitespace}{
logical. Do you want to remove whitespace, like spaces and tabs? If so, change the default by passing \code{TRUE}
}
  \item{removestopwords}{
logical. Do you want to remove stopwords, like "and" and "the"? If so, change the default by passing \code{TRUE}
}
  \item{stemwords}{
logical. Do you want to "stem" words, changing both "walking" and "walked" to "walk"? If so, change the default by passing \code{TRUE}
}
}
\details{
}
\value{
Returns a processed text file with the requested transformations performed. 
}
\references{
}
\author{
Amelia McNamara
}
\note{
}

\seealso{
 \code{\link{tm_map}}
}
\examples{
data(crude)
processText(crude)

## The function is currently defined as
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
}
\keyword{ ~manip }
