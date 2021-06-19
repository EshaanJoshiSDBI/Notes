# y = mx + c
# m is the slope
# c is the y intercept
# Marks - response
# Hours - predictor
# Marks = 5*Hours + 17
head(faithful)
# erupt - response
# waiting - predictor
erupt = faithful$eruptions
wait = faithful$waiting
plot(wait,erupt)
# positive correlation
# correlation coefficient will always be between [-1,1]
# magnitude of correlation coefficient shows the strength of the correlation
# sign shows whether the relation is positive or negative'
cor(wait,erupt)
# strong positive correlation
# wait is directly proportional to erupt
# y - erupt
# x - wait
# m - coefficient of variance / slope of the straight lie
# c - intercept value
# HO WILL ALWAYS BE RESPONSE DOES NOT DEPEND ON FACTOR
# Ho(1) - erupt does not depend on wait OR wait does not influence erupt
# Ho(2) - erupt doesn not depend of intercept OR intercept doesn't influence the erupt
# H1(1) - erupt depends on wait
# H1(2) - erupt depends on intercept
linear_model = lm(erupt ~ wait)
linear_model
summary(linear_model)
linear_model_1 = lm(eruptions ~ waiting, data = faithful)
linear_model_1
summary(linear_model_1)
# c is estimate of intercept
# m is the estimate of predictor
c = -1.87
m = 0.0756
m*90 + c
m*91+c
m*120+c
# conclusion erupt time depends on intercept and wait time
# Multiple R-squared is the accuracy of the model also known as coefficient of determination
