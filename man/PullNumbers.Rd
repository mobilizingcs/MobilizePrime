\name{PullNumbers}
\alias{PullNumbers}
\title{
Pulls numbers out of a variable that has both numbers and text
}
\description{
Uses regular expressions to remove numbers from a variable that has both numbers and text. For example, if given "8 hours" it would return 8. 
}
\usage{
PullNumbers(variable)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{variable}{a variable that contains text and numbers
}
}
\details{
}
\value{
An object the size as the argument, but modified to remove alpha characters. 
}
\references{
}
\author{
Amelia McNamara
}
\note{
}

\seealso{
\code{\link{gsub}}
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~manip }