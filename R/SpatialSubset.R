SpatialSubset <- function(latitude, longitude, e) {
  xy1 <- cbind(longitude, latitude)
  subset1 <- which(xy1[,2]<ymax(e) & xy1[,2]>ymin(e) & xy1[,1]<xmax(e) & xy1[,1]>xmin(e))
  return(i=subset1)
}