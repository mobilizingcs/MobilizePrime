tree_splits <- function(x) {
  cp_table <- x["cptable"]
  cp_df <- as.data.frame(cp_table)
  splits <- cp_df$cptable.nsplit
  return(splits)
}

treeplot <- function(model, ...) {
  if(class(model) == "rpart") {
    n_splits <- tree_splits(x=model)
    max_splits <- base::max(n_splits)
  }
  if (max_splits > 20) stop("Treeplot is too complex to plot")
  rpart.plot::prp(x=model, type=3, extra=3, under=TRUE, clip.right.labs=FALSE,varlen=0, faclen=0, ...)
}