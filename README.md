
# R Package Essentials

<!-- badges: start -->
[![R-CMD-check](https://github.com/njtierney/rpkgess/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/njtierney/rpkgess/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

R packages allow you to share your code.

This is a course on how to develop your own R packages. The target audience is R users who have experience writing their own R code and functions, and/or are enthusiastic about the idea of sharing their R code across multiple projects.

This will grow and change over time as a living book.

# Philosophy

I first learnt to write an R package from [Hilary Parker's famous blog post, ["Writing an R package from scratch"](https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/). Then I consulted [Hadley Wickham's "R packages" book (1st edition)](https://r-pkgs.org/). I consider the "R packages" book (now in its second edition, by Hadley Wickham and Jenny Bryan), to be the authority on best practices for package development, alongside the rOpenSci guide, ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/index.html), by Salmon et al.

These are excellent pieces of reference test, however I think there is a need for a resource that sits somewhere between a blog post on making an R package, and resource. I want something that contains __just enough__ information to get you started on the right path to making an R package. This is what that book represents to me. Along the way I'll include breadcrumbs to other resources to look into when you want to learn more.
  
# Learning outcomes

The course aims for you to be able to do the following:

- Design cohesive and composable functions that follow R programming best practices
- Build and maintain R packages with `usethis` and `devtools`
- Create clear and comprehensive documentation with `roxygen2`
- Share and document small datasets to use as examples in your code
- Implement effective unit testing strategies with `testthat` to ensure your package works as you expect
- Set up continuous integration through GitHub Actions to automatically run tests
- Develop informative vignettes using `quarto` or `rmarkdown` so you can demonstrate to users how to use your package
- Make your package easily installable by publishing it on GitHub and R Universe
- Create a professional package websites using `pkgdown`

# software to install

```r
install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
```

RStudio 

- https://posit.co/download/rstudio-desktop/

git

- 

## R package building tools

### Windows users

RTools

- required if you're a windows user: https://cran.r-project.org/bin/windows/Rtools/

(from https://r-pkgs.org/setup.html#windows)

> During the Rtools installation you may see a window asking you to “Select Additional Tasks”.

> Do not select the box for “Edit the system PATH”. devtools and RStudio should put Rtools on the PATH automatically when it is needed.
> Do select the box for “Save version information to registry”. It should be selected by default.

### macOS

https://r-pkgs.org/setup.html#macos

- get xcode

### linux

https://r-pkgs.org/setup.html#linux

```
sudo apt install r-base-dev
```

# Test you've got everything installed with

```r
devtools::dev_sitrep()
```
