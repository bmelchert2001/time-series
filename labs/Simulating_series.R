library(TSA)
## Simulating a White Noise Process
e <- rnorm(100)
plot(e, type="o", main = "White Noise", col="black")
abline(0,0)
##
## Simulating a Random Walk
e <- rnorm(100)
y=cumsum(e)
plot(y, type="o", main = "Random Walk", col= "blue")
abline(0,0)
##
## Simulating a Moving Average Series
e <- rnorm(100)
elag1=zlag(e)
z=.5*(e+elag1)
z[1]=e[1]
plot(z, type="o", main = "Moving Average Series", col="red")
abline(0,0)
##
##
