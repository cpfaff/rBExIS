

bexis.get.dataset_by <- function(id){
	read.csv(paste0("http://bexis.inf-bb.uni-jena.de:2201/DDM/Data/DownloadAsCsvData/", id))
}

mydata = bexis.get.dataset_by(id=123123)

bexis.options = list("user_credentials" = "something")

bexis.options$user_credentials


