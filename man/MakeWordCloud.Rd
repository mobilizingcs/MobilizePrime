\name{MakeWordCloud}
\alias{MakeWordCloud}
\title{
Plot a word cloud
}
\description{
Creates a word cloud from text that has been initialized to work as text in R. 
}
\usage{
MakeWordCloud(text, color="BuGn", min.freq=2)
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function. 
}
\item{color}{
a color brewer specification for a color range. Defaults to "BuGn", but other options can be found using the command \code{display.brewer.all(type="seq")}. 
}
\item{min.freq}{
the minimum frequency of words you want to appear in the word cloud. Default is 2, so only words that appear 2 or more times in your text will be displayed in the word cloud.
}
}
\details{
}
\value{
}
\references{
}
\author{
Amelia McNamara
}
\note{
}
\seealso{
\code{\link{brewer}}, \code{\link{wordcloud}}, \code{\link{InitializeText}}
}
\examples{
data("crude")
MakeWordCloud(crude, min.freq=10)
}

\keyword{ ~dplot }
