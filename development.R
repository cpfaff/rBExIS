require("devtools")

load_all("rBExIS")

check("rBExIS")

bexis.options()
bexis.options("base_url" = "http://bexis.inf-bb.uni-jena.de:2201")

# a simple helper function
get_download_url(bexis.options("base_url"))

# download data
bexis.get.dataset_by(id = 1)


# bexis.get.dataset_by(id = 1, version = 2)
bexis.get.dataset_by(id = 1)




