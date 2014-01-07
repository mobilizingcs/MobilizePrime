\name{MakeMap}
\alias{MakeMap}
\title{
Plotting points on a map
}
\description{
A function that creates a plot of points on a background map pulled from Google Maps' API. 
}
\usage{
MakeMap(latitude, longitude, e, scaleby, shrink = 0, col = "blue", symbol = 20, add = FALSE, ...)
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
\item{shrink}{
shrink the bubbles by a user specified, as an integer, percentage. Negative integers will expand bubbles in a similar fashion.
}
  \item{col}{
a specification for the plotting color. Defaults to "blue". You can provide any color name here, like "red", "purple", etc., in quotes. Or, you could use hex values like "FF00FF", again in quotes. See section 'Color Specification' in the \code{\link{par}} documentation for more. 
}
  \item{pch}{
either an integer specifying a symbol or a single character to be used as the default in plotting points. The default is 20, which corresponds to filled-in circles, but you could use any number between 1 and 25. See \code{\link{points}} for possible values and their interpretation, or just try using some numbers and see what they do. You could also provide a symbol in quotes, like "m" and all the points would plot as "m"s. 
}
  \item{add}{
a logical value specifying whether you want to add the plot you are creating to the previous one you created (for example, if plotting a different subset in a separate color to be displayed on the same map). Defaults to FALSE. 
}

\item{\dots}{
graphical parameters to be passed to \code{\link{points}}. For example, you could change the size of the dots on the map by passing \code{cex=2}.
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
Amelia McNamara, James Molyneux
}
\note{
}
\seealso{
 \code{\link{par}}, \code{\link{getExtent}}
}
\examples{
lat <- runif(10, 32, 42)
lon <- runif(10, -124, -114)
scale <- sample(1:10, 10)
MakeMap(lat, lon)
MakeMap(lat, lon, scaleby = scale)
MakeMap(lat, lon, scaleby = scale, shrink = 50)   # shrink bubbles by 50\%
MakeMap(lat, lon, scaleby = scale, shrink = -50)  # expand bubbles by 50\%
}
\keyword{ ~hplot }
\keyword{ ~iplot }
\keyword{ ~dynamic }
