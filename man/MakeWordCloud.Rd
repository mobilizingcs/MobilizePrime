\name{MakeWordCloud}
\alias{MakeWordCloud}
\title{
Plot a word cloud
}
\description{
Creates a word cloud from text that has been initialized to work as text in R. Defaults to plotting top 100 most often occuring words. 
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
the minimum frequency of words you want to appear in the word cloud. Default is 2, so only words that appear 2 or more times in your text will be displayed in the word cloud. You could change this to any other number that you wanted to be the minimum frequency. If you wanted all words that appeared, use 1.
}
\item{top}{
accepts either an integer or a percentage in the form of a decimal. If an integer is used then the top integer value of words will be plotted. If a percentage, represented as a positive decimal, is used then the top percent value of words will be plotted.
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
\code{\link{brewer}}, \code{\link{wordcloud}}, \code{\link{InitializeText}}
}
\examples{
data("crude")
MakeWordCloud(crude, min.freq=10)
MakeWordCloud(crude, min.freq=10, top=10)
MakeWordCloud(crude, min.freq=10, top=0.01)
}

\keyword{ ~dplot }
