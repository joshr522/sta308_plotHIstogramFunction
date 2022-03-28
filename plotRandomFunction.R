###########################
##
## PlotRandomFunction.R
##
## Josh Roach
## March 18, 2022
##   Amended on March 28, 2022
##     to do some error checking
##
##
## A function that generates 
##  a sequence of random normal variables
##  and makes a histogram
## 
## This function is based on the code from
##  March 11, 2022
## 
# plotRandom <- function(n=1) {
#   hist(rnorm(n=n, mean=0, sd=1) )
# }
## Command+Shift+c comments out selected code

## is.wholenumber() comes from the help documentation
##   on is.integer -- help(is.integer)
## It simply checks if a number is an integer or not
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) {
  abs(x-round(x)) < tol
}

plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  if(n<0) {
    stop("Sample size n must be positive integer")
  }
  if(!is.wholenumber(n)) {
    warning(paste("Sample size n should be a whole number\n    R is using n=floor(n)=",
                  floor(n)))
  }
  hist(rnorm(n=n, mean=mu, sd=sigma), 
       breaks=hist_breaks )
}

