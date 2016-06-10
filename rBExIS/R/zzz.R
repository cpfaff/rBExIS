# this file contains code that will be executed on loading the package by now
# it sets up the default list of options which is used by functions in the
# package.

.onLoad <- function(lib, pkg) {
  .bexis.env$.bexis.options = list(
    base_url = NA,
    download_directory = "downloads",
    user_credentials = NA
  )
}
