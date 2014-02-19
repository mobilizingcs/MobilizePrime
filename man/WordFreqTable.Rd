\name{WordFreqTable}
\alias{WordFreqTable}
\title{
Prints the top words found in a corpus as specified by the user.
}
\description{
Prints the top number or percentage of words from text that has been initialized to work as text in R.
}
\usage{
WordFreqTable(text, top = 100, format = 'count')
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function.
}
\item{top}{
an integer greater than 0 for format type 'count' or an integer greater than 0 and less than or equal to 100 for format type 'percent'. Determines the number of words, for 'count', or the percent of words, for 'percent', to plot.
}
\item{format}{
must either be specified as 'count' or 'percent'. Use with the 'top' argument to determine how many words to plot.
}
}
\details{
}
\value{
}
\references{
}
\author{
James Molyneux
}
\note{
}
\seealso{
}
\examples{
data("crude")
WordFreqTable(crude, top=10) # Prints the top 10 words used.
WordFreqTable(crude, top=10, format = 'percent') # Prints the top 10\% of words used.
}
\keyword{ ~hplot }
