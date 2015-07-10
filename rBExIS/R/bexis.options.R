#' Set or query otions used for the BExIS R package.
#'
#' This function is used to query and set rBExIS R package specific options
#' like the URL to the BEFdata portal and the URL to the tematres thesaurus.
#'
#' @param \dots unbound parameters
#' @export bexis.options

bexis.options = function(...) {
  lst = list(...)
  .bexis.options = .bexis.env$.bexis.options
  if (length(lst)) {
    if (is.null(names(lst)) && !is.list(lst[[1]])) {
      lst = unlist(lst)
      if (length(lst) == 1) .bexis.options[[lst]] else .bexis.options[lst]
    }
    else {
      omf = .bexis.options
		if (is.list(lst[[1]]))
		  lst = lst[[1]]
		if (length(lst) > 0) {
		  .bexis.options[names(lst)] = lapply(lst, gsub, pattern = "\\s", replacement="")
		  if (!is.null(lst$base_url)) {
			 .bexis.options["base_url"] = sub(.bexis.options["base_url"], pattern = "(/)?$", replacement = "")
			 .bexis.options["base_url"] = sub(.bexis.options["base_url"], pattern = "^(http://)?", replacement = "http://")
		  }
		  .bexis.env$.bexis.options = .bexis.options
		}
      invisible(omf)
    }
  }
  else {
    .bexis.options
  }
}

.bexis.env = new.env()
