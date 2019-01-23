## Simulate Times Series with a linear trend
##
## Create the time index from 1 to 100
## Create the linear trend
##
## Randomly Generate the White Noise Terms
## using Normal with mean 0 and standard deviation 5
##
## Combine the linear trend and white noise terms into Y
##
# Setting seed ensures reproducibility
set.seed(1234)
# set time length
t=1:100
# create trend with mu
mu=50+.3*t
# Randomly generate and simulate white noise > obs, mean, std
e=rnorm(100, 0, 5)
# Trend line guess
y = mu + e
plot(e, type='o', main = "White Noise Series")
abline(0,0)
plot(y, type='o', main = "Time Series with Linear Trend")
abline(50, .3)
##
##Fit a Linear Regression Model to Y
##
# linear model, dependent y regressed on independent t
model=lm(y ~ t)
summary(model)
plot(y, type='p', main = "Time Series with Linear Regression")
abline(model$coeff[1], model$coeff[2])
##Diagnostics
##
# Residuals are distance from y-obs to y-hat, which is fitted linear model line
res=residuals(model)
# Standard residuals
stres=rstandard(model)
# Deleted residuals
delres=rstudent(model)
plot(res, type='o')
abline(0,0)
##

