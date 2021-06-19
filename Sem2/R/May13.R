erupt = faithful$eruptions
var(erupt) # variance
std = var(erupt)^0.5
sd(erupt)
x = c(5,7,3,8,9,3,5,7,3,4)
var(x)
sd(x)
var(x)*(length(x) - 1)/length(x) # population variance
quantile(x,0.75)
quantile(erupt,0.75) - quantile(erupt,0.25) # IQR
boxplot(erupt)
