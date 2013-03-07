SpatialSubset <- function(latitude, longitude, e) {
  xy1 <- cbind(longitude, latitude)
  projected <- Mercator(xy1)
  subset1 <- which(projected[,2]<ymax(e) & projected[,2]>ymin(e) & projected[,1]<xmax(e) & projected[,1]>xmin(e))
  return(i=subset1)
}