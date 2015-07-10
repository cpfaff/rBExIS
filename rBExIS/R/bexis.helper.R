# These functions are not documented with roxygen as they are not exposed
# to the user. They are hepler functions.

get_download_url <- function(base_url, version){
	return(paste0(bexis.options("base_url"), "/DDM/Data/DownloadAsCsvData/"))
}

function_requires_base_url <- function() {
	if(is.na(bexis.options("base_url")))
		stop("The function requires a base url to be set with bexis.options command")
}
