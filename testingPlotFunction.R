
source("plotRandomFunction.R")

## Line 2 above, tells R to open and run ALL of the 
##  code in the file, plotRandomFunction.R

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)
plotRandom(n=60, mu=70, sigma=2.3)
plotRandom(n=60000, mu=70, sigma=2.3)


plotRandom(n=6000, mu=70, sigma=2.3, hist_breaks=30)

plotRandom(n=6000, mu=70, sigma=2.3, hist_breaks=300)

set.seed(20220318)
plotRandom(n=20)

## Playing around with bin sizes to understand how hist() works
##
set.seed(1)
x<-rnorm(n=200)
hist(x)
hist(x, breaks=1)
hist(x, breaks=3)
hist(x, breaks=12)
hist(x, breaks=50)

plotRandom(n=-20)
plotRandom(n=43.5234)
## Line 36 works, but what is it doing???
##   n should be a positive integer
x <- rnorm(n=43.5234)
length(x)
## SO it appears to be truncating
## Let's do two things to our program
##   1. Prevent the user from specifying a negative number
##   2. If the user specifies a positive real number
##      we should tell them what value is actually being used
