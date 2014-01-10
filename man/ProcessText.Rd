\name{ProcessText}
\alias{ProcessText}
\title{
Process text
}
\description{
Process text that has been initialized to work as text in R.
}
\usage{
ProcessText(text, stopwords.list = stopwords("en"), lower = TRUE, removepunctuation = TRUE, removenumbers = TRUE, removewhitespace = FALSE, removestopwords = FALSE, stemwords = FALSE)
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function.
}
  \item{stopwords.list}{
  Specify a stopwords.list you would like to use. You can either specify a custom list or a preloaded list, like "en" or "SMART" by using the 'stopwords()' function.
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
 \code{\link{tm_map}}, \code{\link{InitializeText}}
}
\examples{
data(crude)
ProcessText(crude)
PricessText(crude, stopwords.list = "SMART", removestopwords = TRUE)
}
\keyword{ ~manip }
