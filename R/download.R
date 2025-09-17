biocstickers_readme_url <- "https://raw.githubusercontent.com/Bioconductor/BiocStickers/master/README.md"

download_biocstickers <- function(
  url = biocstickers_readme_url,
	where = "originals"
) {
	biocstickers_readme <- readLines(biocstickers_readme_url)
	png_urls <- .get_urls(biocstickers_readme)
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
