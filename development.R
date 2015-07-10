# This is a development helper file. It hosts calls to help with the
# documentation and package checking and to try out new functions.

# load the devtools package
require("devtools")

# load/reload the bexis package functions
load_all("rBExIS")

# check package for consistency
check("rBExIS")

# Here start functions implemented by the package
require(rBExIS)

## options command to query and set rbexis options
bexis.options()
bexis.options("base_url" = "http://bexis.inf-bb.uni-jena.de:2201")

# get data from bexis
bexis.get.dataset_by(id = 1)
