\name{WordFreqTable}
\alias{WordFreqTable}
\title{
Prints the top words found in a corpus as specified by the user.
}
\description{
Prints the top number or percentage of words from text that has been initialized to work as text in R.
}
\usage{
WordFreqTable(text, top = 1)
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function.
}
\item{top}{
accepts either an integer or a percentage in the form of a decimal. If an integer is used then the top integer value of words will be printed. If a percentage, represented as a positive decimal, is used then the top percent value of words will be printed.
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
WordFreqTable(crude, top=0.10) # Prints the top 10\% of words used.
}
\keyword{ ~hplot }
