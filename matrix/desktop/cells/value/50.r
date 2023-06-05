#!/usr/bin/r
# Title     : value 50
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

testFn5 <- function(x) {
    a <- 0.1
    s1 <- sum((x - 1 / 3)^2)
    s2 <- sum((x - 2 / 3)^2)
    0.5 * ((2 / sqrt(pi)) / (2. * a))^length(x) * (exp(-s1 / (a * a)) + exp(-s2 / (a * a)))
}
testFn5_v <- function(x) {
    a <- 0.1
    r <- apply(x, 2, function(z) {
        s1 <- sum((z - 1 / 3)^2)
        s2 <- sum((z - 2 / 3)^2)
        0.5 * ((2 / sqrt(pi)) / (2. * a))^length(z) * (exp(-s1 / (a * a)) + exp(-s2 / (a * a)))
    })
    matrix(r, ncol = ncol(x))
}

d <- c(f = testFn5, fv = testFn5_v,
             lowerLimit = rep(0, 2), upperLimit = rep(1, 2), times = 20)
knitr::opts_current

testFn6 <- function(x) {
    a <- (1 + sqrt(10.0)) / 9.0
    prod( a / (a + 1) * ((a + 1) / (a + x))^2)
}


d <- c(f = testFn6, fv = testFn6_v,
             lowerLimit = rep(0, 3), upperLimit = rep(1, 3), times = 20)

testFn7 <- function(x) {
    n <- length(x)
    p <- 1/n
    (1 + p)^n * prod(x^p)
}

I.1d <- function(x) {
    sin(4 * x) *
        x * ((x * ( x * (x * x - 4) + 1) - 1))
}

I.2d <- function(x) {
    x1 <- x[1]; x2 <- x[2]
    sin(4 * x1 + 1) * cos(4 * x2) * x1 * (x1 * (x1 * x1)^2 - x2 * (x2 * x2 - x1) +2)
}
I.2d_v <- function(x) {
    matrix(apply(x, 2,
                 function(z) {
                     x1 <- z[1]; x2 <- z[2]
                     sin(4 * x1 + 1) * cos(4 * x2) * x1 * (x1 * (x1 * x1)^2 - x2 * (x2 * x2 - x1) +2)
                 }),
           ncol = ncol(x))
}

sessionInfo()
## R version 4.0.5 (2021-03-31)
## Platform: x86_64-apple-darwin20.3.0 (64-bit)
## Running under: macOS Big Sur 11.3
##
## Matrix products: default
## BLAS:   /usr/local/Cellar/openblas/0.3.15_1/lib/libopenblasp-r0.3.15.dylib
## LAPACK: /usr/local/Cellar/r/4.0.5_1/lib/R/lib/libRlapack.dylib
##
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
##
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base
##
## other attached packages:
## [1] mvtnorm_1.1-1    cubature_2.0.4.2 benchr_0.2.5
##
## loaded via a namespace (and not attached):
##  [1] Rcpp_1.0.6         digest_0.6.27      R6_2.5.0           jsonlite_1.7.2
##  [5] magrittr_2.0.1     evaluate_0.14      highr_0.9          rlang_0.4.11
##  [9] stringi_1.5.3      jquerylib_0.1.4    bslib_0.2.4        rmarkdown_2.7
## [13] tools_4.0.5        stringr_1.4.0      RcppProgress_0.4.2 xfun_0.22
## [17] yaml_2.2.1         compiler_4.0.5     htmltools_0.5.1.1  knitr_1.33
## [21] sass_0.3.1