#' Download BiocStickers
#'
#' @param where Root directory to download stickers.
#' The stickers will be downloaded in a subdirectory 'originals' within that directory.
#' Defaults to current directory.
#' @param overwrite If `FALSE`, skip stickers already present locally.
#' If `TRUE`, re-download all stickers.
#'
#' @returns `TRUE` if all stickers were downloaded successfully.
#' Otherwise, `FALSE`.
#' @export
#'
#' @examples
#' if (interactive()) {
#'   download_biocstickers()
#' }
download_biocstickers <- function(
	where = ".",
  overwrite = FALSE
) {
  where <- file.path(where, .subdir_originals)
	biocstickers_readme <- readLines(.biocstickers_readme_url)
	png_urls <- .get_urls(biocstickers_readme)
	dir.create(where, showWarnings = FALSE, recursive = TRUE)
	.download_stickers(urls, where, overwrite)
	return(TRUE)
}

## get the full URL to each sticker
# x: character vector of lines in the BiocStickers README file
.get_urls <- function(x) {
  x <- grep("img src=.*.png", x, value = TRUE)
  x <- gsub(".*img src=\"", "", x)
  x <- gsub("\".*", "", x)
  x <- paste0("https://raw.githubusercontent.com/Bioconductor/BiocStickers/master/", x)
  x
}

#' @importFrom httr GET write_disk
.download_stickers <- function(urls, where, overwrite) {
  success <- TRUE
  for (url in urls) {
    filename <- basename(url)
    destfile <- file.path(where, filename)
    if (!file.exists(destfile)) {
      tryCatch({
        message(paste("Downloading", url))
        httr::GET(url, httr::write_disk(destfile, overwrite = overwrite))
      }, error = function(e) {
        message(paste("Failed to download", url, ":", e$message))
        success <- FALSE
      })
    } else {
      # message(paste("Skipping", filename))
    }
  }
  return(success)
}
