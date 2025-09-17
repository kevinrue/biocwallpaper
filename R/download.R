biocstickers_readme_url <- "https://raw.githubusercontent.com/Bioconductor/BiocStickers/master/README.md"

download_biocstickers <- function(
  url = biocstickers_readme_url,
	where = "originals",
  overwrite = FALSE
) {
	biocstickers_readme <- readLines(biocstickers_readme_url)
	png_urls <- .get_urls(biocstickers_readme)
	dir.create(where, showWarnings = FALSE, recursive = TRUE)
	.download_stickers(urls, where, overwrite)
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

.download_stickers <- function(urls, where, overwrite) {
  for (url in urls) {
    filename <- basename(url)
    destfile <- file.path(where, filename)
    if (!file.exists(destfile)) {
      tryCatch({
        message(paste("Downloading", url))
        httr::GET(url, httr::write_disk(destfile, overwrite = overwrite))
      }, error = function(e) {
        message(paste("Failed to download", url, ":", e$message))
      })
    } else {
      # message(paste("Skipping", filename))
    }
  }
}
