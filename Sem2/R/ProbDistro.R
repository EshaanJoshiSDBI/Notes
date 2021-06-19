# Discrete - binomial, poisson and hypergeometric
# continuous - exponential, Student's t , normal
# binomial - 2 options - success/failure - prob of a single occurrence known
# n = 7 (stay in Mumbai), (a) rains for exactly 3 days (b) rains for max 4 days (c) rain for minimum 2 days
# dbinom(x,n,p)
dbinom(3,7,0.7) # (a)
sum(dbinom(0:4,7,0.7)) # (b)
pbinom(4,7,0.7)# for max, so instead of x we put the max value, (up to which value we want to calculate the probability) # (b)
sum(dbinom(2:7,7,0.7)) # (c)
1 - (dbinom(0,7,0.7) + dbinom(1,7,0.7)) # (c)
1 - pbinom(1,7,0.7) # (c)
pbinom(1,7,0.7,lower.tail = FALSE) # returns the right side probability
# poisson - when we are more concerned about the # of occurrences rather than the probability of an occurrence
# eg. # of voice lags
# on an average your voice lags 10 times in 1 complete class
# (a) prob that we have exactly 7 voice lags (b) prob that we have max 5 voice lags (c) prob that we have minimum 8 voice lags
dpois(7,10) # (a)
sum(dpois(0:5,10)) # (b)
ppois(5,10) # (b)
ppois(7,10,lower.tail = FALSE) # (c)
# Hyper geometric
# done when there's no replacement i.e sampling is done without replacement
# eg. sampling for any quality related inspection
# group of 100 bulbs out of which 12 bulbs are defective, we draw a sample of 10 bulbs what the probability that exactly 2 are defective
#dhyper(question,defective in population, total stuff(population size), sample size)
dhyper(2,12,100,10) # exactly 2
phyper(2,12,100,10) # maximum 2
# Exponential
# When we want to model time gap between two successive events
#  On an average in a class of 100 minutes we have 6 voice lags
# in a years time, the machine breaks down 20 times
# MTBF - mean time between failures
mtbf = 100/6
mtbf
# that auditor is going a part of this batch for 20 minutes
# prob that voice lag DOES NOT take place within 20 minutes window
pexp(20,6/100)
1 - pexp(20,6/100) # chance that the voice lag does not take place
# 2 parameters define normal distribution - mean and standard deviation
# 3 - parameters define student's t distribution - mean, standard deviation and sample size
# avg time = 97 mins
# std = 4.3
#pnorm(below value, mean, std)
pnorm(95,97,4.3)
pnorm(104,97,4.3,lower.tail = FALSE) # probability that it is beyond/more than 104 hours
sum(dnorm(96:101,97,4.3))
pnorm(102,97,4.3) - pnorm(96,97,4.3)
sum(dnorm(96:102,97,4.3)) # don't use dnorm as in normality exact time is not possible practically

# 100 sessions mean times = 97.5 min, st dev = 2.7 min, what is the probability that today's class gets over in less than 95 mins
pnorm(95,97.5,2.7)
pnorm(95,97.5,2.7,lower.tail = FALSE)
# z test statistic z = (Num - Population mean) / Standard Deviation
z = (95 - 97.5)/2.7
z
pnorm(z)
# 20 sessions mean times = 97.5 min, st dev = 2.7 min, what is the probability that today's class gets over in less than 95 mins
# When sample size < 30 we cannot use normal distribution. We have to use Student's t distribution
# degrees of freedom is sample size - 1
pt(z,19)
pt(z,99)