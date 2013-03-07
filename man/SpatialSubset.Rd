\name{SpatialSubset}
\alias{SpatialSubset}
\title{
Subsets a list of points according to a given extent.
}
\description{
Takes latitude and longitude values, as well as an extent object (generated dynamically by the user) and returns the indices of the points that fall within the extent. 
}
\usage{
SpatialSubset(latitude, longitude, e)
}
\arguments{
  \item{latitude}{
the latitude coordinates of points to be subset.
}
  \item{longitude}{
the longitude coordinates of points to be subset.
}
  \item{e}{
the extent for the subsetting. This should come from creating an extent dynamically, through \code{\link{drawExtent}}
}
}
\details{
}
\value{
A list of indices of points in the input set that were within the spatial extent. 
}
\references{
}
\author{
Amelia McNamara
}
\note{
}

\seealso{
\code{\link{subset}}, \code{\link{drawExtent}}, \code{\link{MakeMap}}
}
\examples{
lat = runif(10, 32, 42)
lon = runif(10, -124, -114)
MakeMap(lat, lon)
# Dynamically generate extent using the drawExtent() function
e = drawExtent()

SpatialSubset(lat, lon, e)
}
\keyword{ ~manip }
