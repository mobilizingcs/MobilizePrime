# MobilizePrime

This is an R package for use in the Mobilize Prime curriculum of the [Mobilize](www.mobilizingcs.org) project. It wraps up complicated functions to simplify function calls for tasks such as mapmaking, spatial subsetting, text analysis, word clouds, and regular expressions with numbers.

This tool is meant to be installed on an [RStudio&reg;](www.rstudio.org) server (or a number of workstations with the local copy of [RStudio&reg;](www.rstudio.org)) and facilitates some data portions of the [Mobilize Prime curriculum](https://wiki.mobilizingcs.org/curriculum#mobilize_prime).

## Installation

To install this package (which for legacy purposes, is actually named MobilizeSimple), install the dependencies (`devtools` only needed if you install via `install_github` command):

```r
install.packages(c("raster", "dismo", "tm", "RColorBrewer", "rgdal", "sp", "wordcloud", "stringr", "plyr", "dplyr", "mosaic", "latticeExtra", "grid", "rpart", "rpart.plot", "curl", "devtools"))
```

Install via `install_github` command:

```R
install_github("MobilizePrime", "mobilizingcs")
```

Or if you'd prefer, clone this directory, `cd` to it and install:

```bash
git clone https://github.com/mobilizingcs/MobilizePrime
cd MobilizePrime
R CMD INSTALL MobilizeSimple
```
