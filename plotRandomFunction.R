###########################
##
## PlotRandomFunction.R
##
## Josh Roach
## March 18, 2022
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

plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  hist(rnorm(n=n, mean=mu, sd=sigma), breaks=hist_breaks )
}

