# This is a development helper file. It hosts calls to help with the
# documentation and package checking and to try out new functions.
#####################################################################

install.packages("devtools")
library(devtools)

install.packages("httr")
install.packages("XML")
install.packages("jsonlite")
install_github("BEXIS2/rBExIS", subdir = "rBExIS")

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

## options command to query and set rbexis options
bexis.options()
bexis.options("token" = "pW5Cxv8ciB72TiftCCoDupJqzuw9szWYWybnUYutPQPp8FiAoEGxUvzMLkw4RzU4")
bexis.options("base_url" = "http://bx2test.inf-bb.uni-jena.de:2002")

# get list of all dataset ids
bexis_dataset_ids <- bexis.get.datasets()

# get data from bexis from dataset with id = 1
bexis_data <- bexis.get.dataset_by(id = 1)

# get list of all metadata objects
bexis_metadata_list <- bexis.get.metadatas()

# get metadata from bexis from dataset with id = 1
bexis_metadata <- bexis.get.metadata_by(id = 1)

# get list of all structure ids
bexis_structures <- bexis.get.structures()

# get structure from bexis with id = 1
bexis_structure <- bexis.get.structure_by(1)
