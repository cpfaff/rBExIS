# These functions are not documented with roxygen as they are not exposed to
# the user in the end. They are hepler functions that allow to dry the code of
# other functions in the package

# url related helpers
get_download_url <- function(base_url, version){
	return(paste0(bexis.options("base_url"), "/DDM/Data/DownloadAsCsvData/"))
}

# check and feedback related
function_requires_base_url <- function() {
	if(is.na(bexis.options("base_url")))
		stop("The function requires a base url. Please use bexis.options() to provide it")
}
