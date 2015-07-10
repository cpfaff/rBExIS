#' Getting data from BExIS
#'
#' The function provides access to dataset in BExIS.
#' @param id Is the ID of the dataset you want to access
#' @param base_url Is the URL that is use to talk to
#'
#' @export bexis.get.dataset_by

bexis.get.dataset_by <- function(id, base_url = bexis.options("base_url")) {
	function_requires_base_url()
	read.csv(paste0(get_download_url("base_url"), id))
}


