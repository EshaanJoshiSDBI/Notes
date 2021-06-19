# Example
# Salary is greater than or equal to 30,000
# Salary is less than to 30,000
# left tail test because the error is on the left side
# CL = 95%, LoS = 0.05
salary = c(28,32,27,28,26,33,27,28,29,26,25,32,31,29,27,31,29,28,28)
length(salary)
mean(salary)
t.test(salary,mu = 30,alternative = 'less') # left tailed
t.test(salary,mu = 30,alternative = 'greater') # right tailed
#-------------------------------------------------------------------------------
erupt = faithful$eruptions
length(erupt)
mean(erupt)
# Min salary is 3.8 LPA
t.test(erupt,mu=3.8,alternative = 'less')
# Problem solve in max of 3.3 hrs
t.test(erupt,mu=3.3,alternative = 'greater')
t.test(erupt,mu = 3.8,alternative = 'two.sided')
# mean = 3.4 to complete topic
t.test(erupt,mu = 3.4,alternative = 'two.sided')
sampa = erupt[1:20]
sampb = erupt[120:149]
# Ho avg(sampa) - avg(sampb) > 0.1
# Ho avg(sampa) - avg(sampb) >= 0.1
cabs = c(56,78,49,57,62)
local = c(45,52,47,42,49,42,52)
# avg(cab) - avg(local) >= 10
# local can be higher than cab sometimes 
# Don't keep higher value first
t.test(cabs, local, mu = 10, alternative = 'less')
60.4 - 47.0
t.test(cabs, local, mu = 15, alternative = 'less')
t.test(sampa,sampb,mu=0.1,alternative = 'less')
# Paired
work_office = c(35,28,32,37,29)
work_home = c(32,29,27,28,31)
# Ho since people started working from home, each one is taking at least 4 minutes less than what they were taking when working from office
# Ho avg(of - ho) >=4
t.test(work_office,work_home,mu = 4, alternative = 'less',paired = TRUE)

