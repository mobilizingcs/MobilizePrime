MobilizeMap <-
function(latitude, longitude, e, scaleby, color='blue', symbol=20, getsubset=FALSE, add=FALSE){
  xy1 <- cbind(longitude, latitude)
  projected <- Mercator(xy1)
	if(missing(e)) {
    latrange <- extendrange(latitude, f=0.04)
	  lonrange <- extendrange(longitude, f=0.04)
	  x <- extent(lonrange[1],lonrange[2], latrange[1], latrange[2])
  	}
	else {
	  x <- e
	  subset1 <- which(projected[,2]<ymax(x) & projected[,2]>ymin(x) & projected[,1]<xmax(x) & projected[,1]>xmin(x))
    projected <- projected[subset1,]
	}
	r = gmap(x)
 par.old <- par(no.readonly = TRUE)$mar;
  if (add==FALSE) {
    plot(r, interpolate=TRUE) 
  }
  if (!missing(scaleby)){
    radius <- sqrt(scaleby /pi)
    symbols(projected, circles=radius, inches=0.35, add=TRUE, bg=color)
  }
	points(projected, col=color, pch=symbol)
  
  if (getsubset){
    return(list(getsubset=subset1))  
  }
 par(mar=par.old);
  }
