\name{FreqTable}
\alias{FreqTable}
\title{
Create 2 variable contingency tables.
}
\description{
A wrapper using the Mosaic package's tally function to create 2-way contingency tables for two variables.
}
\usage{
FreqTable(var1, var2, format = "count")
}
\arguments{
  \item{var1}{
the first variable for the table.
}
  \item{var2}{
the second variable for the table. If not supplied a table with the counts of var1 will be created.
}
  \item{format}{
users can decide whether to display the table as counts, percents or proportions by using 'count', 'percent' or 'proportion'. Default is to use 'count'.
}
\item{totals}{
logical. Users can either have the totals calculated by setting totals = TRUE or leave them out by setting totals = FALSE.
}
}
\details{
}
\value{
Produces a 2-way contingency table.
}
\references{
}
\author{
Amelia McNamara, James Molyneux
}
\note{
}
\seealso{
}
\examples{
# 1-way contingency table
FreqTable(mtcars$gear)

# 2-way contingency table
FreqTable(mtcars$gear, mtcars$cyl)

# Different formats for 2-way contingency table
FreqTable(mtcars$gear, mtcars$cyl, format = 'count')
FreqTable(mtcars$gear, mtcars$cyl, format = 'percent')
FreqTable(mtcars$gear, mtcars$cyl, format = 'proportion')

# Turn 'totals' off
FreqTable(mtcars$gear, mtcars$cyl, totals = FALSE)
}