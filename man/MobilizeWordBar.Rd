\name{MakeWordBar}
\alias{MakeWordBar}
\title{
Create a bar plot of words
}
\description{
Creates a bar plot of words from text that has been initialized to work as text in R.
}
\usage{
MakeWordBar(text, min.freq=2)
}
\arguments{
  \item{text}{
a text object that has been initialized using the \code{\link{InitializeText}} function.
}
\item{min.freq}{
the minimum frequency of words you want to appear in the bar plot. Default is 2, so only words that appear 2 or more times in your text will be displayed in the bar plot.
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
Amelia McNamara
}
\note{
}
\seealso{
\code{\link{barplot}}
}
\examples{
data("crude")
MakeWordBar(crude, min.freq=10)

}
}
\keyword{ ~hplot }
