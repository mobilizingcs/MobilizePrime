\name{MobilizeMap}
\alias{MobilizeMap}
\title{
Plotting points on a map
}
\description{
A function that creates a plot of points on a background map pulled from Google Maps' API. If given the parameter getsubset = TRUE, it also returns a subset of points within the given extent. 
}
\usage{
MobilizeMap(latitude, longitude, e, color = "blue", symbol = 20, getsubset = FALSE, add = FALSE)
}
%- maybe also 'usage' for other objects documented here.
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
  \item{getsubset}{
a logical value specifying whether or not you want the function to return a subset of the points in a dataset that were included in the plot. Defaults to FALSE. 
}
  \item{add}{
a logical value specifying whether you want to add the plot you are creating to the previous one you created (for example, if plotting a different subset in a separate color to be displayed on the same map). Defaults to FALSE. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Generally only produces a map, but if \code{getsubset = TRUE} it returns a dataframe of the subset of points included in the map.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Amelia McNamara
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{par}}, \code{\link{getExtent}}
}
\examples{
lat <- runif(10, 32, 42)
lon <- runif(10, -124, -114)
MobilizeMap(lat, lon)


## The function is currently defined as
function (latitude, longitude, e, scaleby, color = "blue", symbol = 20, 
    getsubset = FALSE, add = FALSE) 
{
    xy1 <- cbind(longitude, latitude)
    projected <- Mercator(xy1)
    if (missing(e)) {
        latrange <- extendrange(latitude, f = 0.04)
        lonrange <- extendrange(longitude, f = 0.04)
        x <- extent(lonrange[1], lonrange[2], latrange[1], latrange[2])
    }
    else {
        x <- e
        subset1 <- which(projected[, 2] < ymax(x) & projected[, 
            2] > ymin(x) & projected[, 1] < xmax(x) & projected[, 
            1] > xmin(x))
        projected <- projected[subset1, ]
    }
    r = gmap(x)
    par.old <- par(no.readonly = TRUE)
    if (add == FALSE) {
        plot(r, interpolate = TRUE)
    }
    if (!missing(scaleby)){
      radius <- sqrt(scaleby /pi)
      symbols(projected, circles=radius, inches=0.35, add=TRUE, bg=color)
    }
    points(projected, col = color, pch = symbol)
    if (getsubset) {
        return(list(getsubset = subset1))
    }
    par(par.old)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~hplot }
\keyword{ ~iplot }
\keyword{ ~dynamic }
% __ONLY ONE__ keyword per line
