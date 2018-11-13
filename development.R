# This is a development helper file. It hosts calls to help with the
# documentation and package checking and to try out new functions.

# install devtools
install.packages("devtools")
# install rBExIS package from github
library(devtools)
install_github("BEXIS2/rBExIS", subdir = "rBExIS")

# load the devtools package
require("devtools")

#load httr 
install.packages("httr")

#Require the package so you can use it
require("httr")

#load jsonlite
install.packages("jsonlite")

#Require the package so you can use it
require("jsonlite")

# load/reload the bexis package functions
load_all("rBExIS")

# check package for consistency
check("rBExIS")

# Here start functions implemented by the package
require(rBExIS)

## options command to query and set rbexis options
bexis.options()
bexis.options("token" = "VUFDGJKFYETpzExHKesCA59JRX7fALE99VFF9vJogbzzSsaaU8HRJHw7r5pn6Bdb")
bexis.options("base_url" = "https://localhost:44345")

# get data from bexis
bexis.get.dataset_by(id = 9)

