#' Getting data from BExIS
#'
#' The function provides access to data that on a BExIS II instance.
#' @param id Is the ID of the dataset you want to access
#' @param base_url Is the URL of the BExIS instance (e.g. www.mybexis.de)
#' If the base url is already provided by the function bexis.options()
#'  then this value will be taken and you do not need to provide it again.
#'
#' @return The function returns a data frame of the requested dataset.
#' An error is provided in case the data is not found or if you don't
#' have the rights to access it.
#'
#' @examples \dontrun{
#'         bexis.get.dataset_by(id=8)
#'       }
#' @export bexis.get.dataset_by

bexis.get.dataset_by <- function(id, base_url = bexis.options("base_url")) {
	function_requires_base_url()
	read.csv(paste0(get_download_url("base_url"), id))
}


