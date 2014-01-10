\name{MakeWordBar}
\alias{MakeWordBar}
\title{
Create a bar plot of words
}
\description{
Creates a bar plot of words from text that has been initialized to work as text in R.
}
\usage{
MakeWordBar(text, min.freq=2, top=50, format = 'count')
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function.
}
\item{min.freq}{
the minimum frequency of words you want to appear in the bar plot. Default is 2, so only words that appear 2 or more times in your text will be displayed in the bar plot. You could change this to any other number that you wanted to be the minimum frequency. If you wanted all words that appeared, use 1.
}
\item{top}{
an integer greater than 0 for format type 'count' or an integer greater than 0 and less than or equal to 100 for format type 'percent'. Determines the number of words, for 'count', or the percent of words, for 'percent', to plot.
}
\item{format}{
must either be specified as 'count' or 'percent'. Use with the 'top' argument to determine how many words to plot.
}
\item{\dots}{
graphical parameters to be passed to \code{\link{barplot}}. For example, you could change the color of the bars to blue by passing \code{col="blue"}, or orient the labels vertically by passing \code{las=2}. 
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
\code{\link{barplot}}
}
\examples{
data("crude")
MakeWordBar(crude, min.freq=20)
MakeWordBar(crude, top=5)
MakeWordBar(crude, top=5, format='percent')
}
\keyword{ ~hplot }
