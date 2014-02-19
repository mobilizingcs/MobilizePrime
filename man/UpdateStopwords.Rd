\name{UpdateStopwords}
\alias{UpdateStopwords}
\title{
Update stopword lists with new words.
}
\description{
An easy way to update stopword lists with new words. Either update preloaded stopwords lists, i.e. "en" or "SMART" or update your own custom stopwords list.
}
\usage{
UpdateStopwords(words, stopword.set = "en")
}
\arguments{
  \item{words}{
a vector of words, formatted as strings, to add to the 'stopword.set'.
}
\item{stopword.set}{
choose a preloaded stopwords list, i.e. "en" (default) or "SMART" or a vector of custom stopwords.
}
}
\details{
}
\value{
}
\references{
}
\author{
Amelia McNamara, James Molyneux
}
\note{
}
\seealso{
}
\examples{
## Example using the "en" stopword list
data("crude")   # Load text data
WordFreqTable(crude, top = 10)    # Notice the top 10 words

crude <- ProcessText(crude, removestopwords = TRUE)   # Remove the "en" stopwords
WordFreqTable(crude, top = 10)    # Notice the new top 10 words

WordsToInclude <- c("said", "mln", "bpd", "dlrs")    # Words we want to include in our stoplist
UpdatedStopwords <- UpdateStopwords(words = WordsToInclude)   # Add words to "en" stoplist
crude <- ProcessText(crude, stopwords.list = UpdatedStopwords, removestopwords = TRUE)
WordFreqTable(crude, top = 10)    # Notice the new top 10 words


## Example using the "SMART" stopword list
data("crude")   # Load text data
WordFreqTable(crude, top = 10)    # Notice the top 10 words

crude <- ProcessText(crude, stopwords.list = stopwords("SMART"), removestopwords = TRUE)   # Remove the "SMART" stopwords
WordFreqTable(crude, top = 10)    # Notice the new top 10 words

WordsToInclude <- c("mln", "bpd", "dlrs")    # Words we want to include in our stoplist
UpdatedStopwords <- UpdateStopwords(words = WordsToInclude, stopword.set = "SMART")   # Add words to "SMART" stoplist
crude <- ProcessText(crude, stopwords.list = UpdatedStopwords, removestopwords = TRUE)
WordFreqTable(crude, top = 10)    # Notice the new top 10 words
}
\keyword{ ~hplot }
