MakeMap <- function(latitude, longitude, e, scaleby, size = 100, add=FALSE, col='blue', pch=20, color, data, ...){
  if(!missing(data)) {
    data <- substitute(data)
    longitude <- substitute(longitude)
    latitude <- substitute(latitude)
    long_text <- paste0(data, "$", longitude)
    lat_text <- paste0(data, "$", latitude)
    longitude <- eval(parse(text=long_text))
    latitude <- eval(parse(text=lat_text))
    xy1 <- cbind(longitude, latitude)
    if(!missing(scaleby)) {
      scaleby <- substitute(scaleby)
      scaleby_text <- paste0(data, "$", scaleby)
      scaleby <- eval(parse(text=scaleby_text))
    }
    if(!missing(col)) {
      if(class(col)!="character") {
        col <- substitute(col)
        col_text <- paste0(data, "$", col)
        col <- as.factor(as.character(eval(parse(text=col_text))))
      } else {
        col <- substitute(col)
      }
    }
  } else {
    xy1 <- cbind(longitude, latitude) 
  }
  projected <- Mercator(xy1)
  if(!missing(color)) {
    stop("Remember to use the argument 'col' and not 'color'.")
  }
  if(missing(e)) {
    if(nrow(projected) == 1) {
      latrange <- extendrange(latitude, r = c(latitude - 0.1, latitude + 0.1),
                              f=0.3)
      lonrange <- extendrange(longitude, r = c(longitude - 0.1, longitude + 0.1),
                              f=0.5)
      x <- extent(lonrange[1], lonrange[2], latrange[1], latrange[2])
    } else {
      latrange <- extendrange(latitude, f=0.04)
      lonrange <- extendrange(longitude, f=0.04)
      x <- extent(lonrange[1], lonrange[2], latrange[1], latrange[2])
      f1 <- (latrange[2] - latrange[1])/(lonrange[2] - lonrange[1])
      if (f1 < 1/4) {
        latrange <- extendrange(latitude, f = 1.5 - f1)
        x <- extent(lonrange[1], lonrange[2], latrange[1], latrange[2])      
      }
      if (f1 > 5/4) {
        lonrange <- extendrange(longitude, f = f1 - 1)
        x <- extent(lonrange[1], lonrange[2], latrange[1], latrange[2])      
      }
    }
  }  
  else {
    x <- e
    subset1 <- which(projected[,2]<ymax(x) & projected[,2]>ymin(x) & projected[,1]<xmax(x) & projected[,1]>xmin(x))
    projected <- projected[subset1,]
    if (!missing(scaleby)){
      scaleby <- scaleby[subset1]
    }
  }
  r = gmap(x, scale=2)
  par.old <- par(no.readonly = TRUE)$mar
  if (add==FALSE) {
    plot(r, interpolate=TRUE) 
  }
  if (!missing(scaleby)){
    radius <- sqrt(scaleby /pi)
    bubble.size <- 0.35 * size / 100
    if (is.factor(col)) {
      symbols(projected[order(-radius), ], circles=radius[order(-radius)], inches=bubble.size, add=TRUE, bg=col[order(-radius)], fg='white',...)
    } else {
      symbols(projected[order(-radius), ], circles=radius[order(-radius)], inches=bubble.size, add=TRUE, bg=col, fg='white',...)
    }
  } else {
    point.size <- size / 100
    points(projected, col=col, pch = pch, cex = point.size)
    par(mar=par.old);   
  }
}

make_map <- function(...) MakeMap(...)
