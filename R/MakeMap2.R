#' Create a zoom-and-panable map in MobilizeSimple
#' 
#' This function reproduces the MakeMap functionality from the MobilizeSimple package, but with dynamic maps. 
#' You can pan and zoom over the range of the map, and do all the features from the original MakeMap. This means 
#' you can change the color of points, scale them by a data value, etc.
#' 
#' @latitude the latitude coordinates of points in the plot
#' @longitude the longitude coordinates of points in the plot
#' @scaleby the variable for variables to be scaled by in a bubble plot
#' @size allows the user to shrink or expand the size of the plotted points as a percent of the default point size. 
#' For example, size = 80 would display points that are 80% of their original size. Size = 120 would display points that are 120% of their original size.
#' @col a specification for the plotting color. Defaults to "blue." You can provide any color name here, like "red", "purple", etc., in quotes. 
#' Or, you could use hex values like "#FF00FF", again in quotes. See section 'Color Specification' in the \code{\link{par}} documentation for more. 
#' @maptype specifies the base map you want to use. Defaults to 'Stamen.Terrain' but other options are 'Stamen.Toner' and 'Stamen.Watercolor'.
#' 
#'  @export
#'  @examples
#'  data(labike)
#'  MakeMap2(labike$latitude, labike$longitude)
#'  MakeMap2(labike$latitude, labike$longitude, scaleby=labike$bike_count_pm)
#'  MakeMap2(labike$latitude, labike$longitude, scaleby=labike$bike_count_pm, size=50)

require(rMaps)
require(MobilizeSimple)
require(rCharts)
data(labike, package="MobilizeSimple")


MakeMap2 <- function(latitude, longitude, scaleby, size = 100, col="blue", maptype='Stamen.Terrain', color, ...){
  if(!missing(color)) {
    stop("Remember to use the argument 'col' and not 'color'.")
  }
  map1 = Leaflet$new()
  map1$setView(c(mean(latitude), mean(longitude)), 10)
  map1$tileLayer(provider = maptype)
  if (!missing(scaleby)){
    radius <- (sqrt(scaleby / pi) * size)/ 100
  }else{
      radius <- (rep(10, length(latitude)) * size )/100
  }
  catchall <- list()
  for (i in 1:length(latitude)){
    catchall[[length(catchall)+1]] <- list(latitude=latitude[i], longitude=longitude[i], fillColor=col, radius=radius[i])
  }
  map1$geoJson(toGeoJSON(catchall), 
  pointToLayer =  "#! function(feature, latlng){
    return L.circleMarker(latlng, {
      radius: feature.properties.radius || 10,
      fillColor: feature.properties.fillColor || 'blue',    
      color: '#000',
      weight: 1,
      fillOpacity: 0.8
    })
  }!#"
  )
  map1
}