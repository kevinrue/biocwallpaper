
<!-- README.md is generated from README.Rmd. Please edit that file -->

# biocwallpaper

<!-- badges: start -->

[![GitHub
issues](https://img.shields.io/github/issues/kevinrue/biocwallpaper)](https://github.com/kevinrue/biocwallpaper/issues)
[![GitHub
pulls](https://img.shields.io/github/issues-pr/kevinrue/biocwallpaper)](https://github.com/kevinrue/biocwallpaper/pulls)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![check-bioc](https://github.com/kevinrue/biocwallpaper/actions/workflows/check-bioc.yml/badge.svg)](https://github.com/kevinrue/biocwallpaper/actions/workflows/check-bioc.yml)
<!-- badges: end -->

The goal of `biocwallpaper` is to provide functions for downloading,
cropping, and sorting BiocStickers by colour, to assemble them into
various layouts, including the Bioconductor note and a hexagonal layout.

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `biocwallpaper` from
[Bioconductor](http://bioconductor.org/) using the following code:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

BiocManager::install("biocwallpaper")
```

And the development version from
[GitHub](https://github.com/kevinrue/biocwallpaper) with:

``` r
BiocManager::install("kevinrue/biocwallpaper")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library("biocwallpaper")
if (interactive()) {
  download_biocstickers()
}
```

## Citation

Below is the citation output from using `citation('biocwallpaper')` in
R. Please run this yourself to check for any updates on how to cite
**biocwallpaper**.

``` r
print(citation('biocwallpaper'), bibtex = TRUE)
#> To cite package 'biocwallpaper' in publications use:
#> 
#>   Rue-Albrecht K (2025). _biocwallpaper: Collate BiocStickers_. R
#>   package version 0.99.0, <https://github.com/kevinrue/biocwallpaper>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {biocwallpaper: Collate BiocStickers},
#>     author = {Kevin Rue-Albrecht},
#>     year = {2025},
#>     note = {R package version 0.99.0},
#>     url = {https://github.com/kevinrue/biocwallpaper},
#>   }
```

Please note that the `biocwallpaper` was only made possible thanks to
many other R and bioinformatics software authors, which are cited either
in the vignettes and/or the paper(s) describing this package.

## Code of Conduct

Please note that the `biocwallpaper` project is released with a
[Contributor Code of
Conduct](http://bioconductor.org/about/code-of-conduct/). By
contributing to this project, you agree to abide by its terms.

## Development tools

- Continuous code testing is possible thanks to [GitHub
  actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
  through *[usethis](https://CRAN.R-project.org/package=usethis)*,
  *[remotes](https://CRAN.R-project.org/package=remotes)*, and
  *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)* customized
  to use [Bioconductor’s docker
  containers](https://www.bioconductor.org/help/docker/) and
  *[BiocCheck](https://bioconductor.org/packages/3.21/BiocCheck)*.
- Code coverage assessment is possible thanks to
  [codecov](https://codecov.io/gh) and
  *[covr](https://CRAN.R-project.org/package=covr)*.
- The [documentation website](http://kevinrue.github.io/biocwallpaper)
  is automatically updated thanks to
  *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
- The code is styled automatically thanks to
  *[styler](https://CRAN.R-project.org/package=styler)*.
- The documentation is formatted thanks to
  *[devtools](https://CRAN.R-project.org/package=devtools)* and
  *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.21/biocthis)*.
