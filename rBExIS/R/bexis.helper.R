#' Functions to provide helpers for other functions
#' e.g. paste together a url after certain criteria

get_download_url <- function(base_url, version){
	return(paste0(bexis.options("base_url"), "/DDM/Data/DownloadAsCsvData/"))
}

function_requires_base_url <- function() {
	if(is.na(bexis.options("base_url")))
		stop("The function requires a base url to be set with bexis.options command")
}

