# rBExIS

A package to exchange data and metadata in between R statistics and instances
of the BExIS II data managemet workbench.

## Install

```
#install devtools and add to libary
install.packages("devtools")
library(devtools)

#install required packages
install.packages("httr")
install.packages("XML")
install.packages("jsonlite")
install_github("BEXIS2/rBExIS", subdir = "rBExIS")

#add packages to the libary
library(httr)
library(jsonlite)
library(XML)
library(rBExIS)

# load/reload the bexis package functions
load_all("rBExIS")

# check package for consistency
check("rBExIS")

# Here start functions implemented by the package
require(rBExIS)

```

## Download functionality

* get list of all dataset ids
```r
bexis_dataset_ids <- bexis.get.datasets()
```
* get data from bexis from dataset with id = xy
```r
bexis_data <- bexis.get.dataset_by(id = xy)
```

## Access Metadata

* get list of all metadata objects
```r
bexis_metadata_list <- bexis.get.metadatas()
```
* get metadata from bexis from dataset with id = xy
```r
bexis_metadata <- bexis.get.metadata_by(id = xy)
```

## Access Structure

* get list of all structure ids
```r
bexis_structures <- bexis.get.structures()
```
* get structure from bexis with id = xy
```r
bexis_structure <- bexis.get.structure_by(xy)
```


## Contribute

* Fork
* Implement/Fix
* Send pull request
* Wait and pray!

