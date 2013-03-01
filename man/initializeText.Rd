\name{initializeText}
\alias{initializeText}
\title{
  Initialize text
}
\description{
  Initializes text for use in R, allowing you to create word clouds and bar plots.
}
\usage{
  initializeText(variable)
}
\arguments{
  \item{variable}{
a variable from your data set that contains text. 
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
  \code{\link{Corpus}}
}
\examples{
  data(mtcars)
  initializeText(row.names(mtcars))
  
  ## The function is currently defined as
  function(variable) {
  return(Corpus(VectorSource(variable)))
}
}
\keyword{ ~manip }
