library(moments)
#skewness - symmetry of the data, i.e the histogram is symmetric or not.
# If the median line is in the center of the box and the whiskers are of the same length then the distribution is symmetric
hist(erupt)
vals = rep(c(1,2,3,4,5,6,7,8,9), times = c(28,40,25,20,15,10,9,6,4))
hist(vals) # peak left so skewed to the right skewness is positive (0.8305112)
skewness(vals)
valsr = rep(c(1,2,3,4,5,6,7,8,9), times = c(4,6,9,10,15,20,25,40,28))
hist(valsr)
skewness(valsr)# peak right so skewed to the left skewness is negative (-0.8305112)
vals_sym = rep(c(1,2,3,4,5,6,7,8,9), times = c(2,6,15,20,35,20,15,6,2))
hist(vals_sym) # symmetric skewness 0
skewness(vals_sym)
vals_sym = rep(c(1,2,3,4,5,6,7,8,9), times = c(2,6,15,20,28,20,15,6,2))
kurtosis(vals_sym)
x = c(1,1,2,2,3,3,5,5,7,7,9,9)
kurtosis(x)
kurtosis(erupt)
kurtosis(faithful$eruptions)