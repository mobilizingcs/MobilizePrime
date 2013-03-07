\name{MakeMap}
\alias{MakeMap}
\title{
Plotting points on a map
}
\description{
A function that creates a plot of points on a background map pulled from Google Maps' API. 
}
\usage{
MakeMap(latitude, longitude, e, scaleby, color = "blue", symbol = 20, add = FALSE)
}
\arguments{
  \item{latitude}{
the latitude coordinates of points in the plot.
}
  \item{longitude}{
the longitude coordinates of points in the plot
}
  \item{e}{
the extent for the map. If not given, the function will determine an extent from the points that were provided. 
}
\item{scaleby}{
the variable for bubbles to be scaled by in a bubble plot. 
}
  \item{color}{
a specification for the plotting color. Defaults to "blue". Masking \code{col} from \code{\link{par}}. See section 'Color Specification' in the \code{\link{par}} documentation for more. 
}
  \item{symbol}{
either an integer specifying a symbol or a single character to be used as the default in plotting points. See \code{\link{points}} for possible values and their interpretation. Masking pch from \code{\link{par}}.
}
  \item{add}{
a logical value specifying whether you want to add the plot you are creating to the previous one you created (for example, if plotting a different subset in a separate color to be displayed on the same map). Defaults to FALSE. 
}
}
\details{
}
\value{
Produces a map.
}
\references{
}
\author{
Amelia McNamara
}
\note{
}
\seealso{
 \code{\link{par}}, \code{\link{getExtent}}
}
\examples{
lat <- runif(10, 32, 42)
lon <- runif(10, -124, -114)
MakeMap(lat, lon)

}
\keyword{ ~hplot }
\keyword{ ~iplot }
\keyword{ ~dynamic }