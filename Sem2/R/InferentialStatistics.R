# SS - sample statistics
# It is the number which is calculated based on the data coming from a sample
# Population Parameter is the number which is calculated based on the data coming from a population (PP)
## PP - want to known
## PP is not known
## SS may not be equal to the PP
## PP could be more than SS or could be lower than SS
# Why they not equal
# SS = PP + Bias + Chance Variation
salary = faithful$eruptions
length(salary)
sal_sample = salary[72:135]
mean(sal_sample)
pp = mean(salary)
pp
t.test(sal_sample)
t.test(sal_sample, conf.level = 0.99)
# What percentage of people are vaccinated
# at 95% CI
# a sample of 700 is taken,230 are vaccinated, sample proportion is 0.3285
230/700
prop.test(230,700)
# There is a 95% that people vaccinated is between 0.29 and 0.36; 2.5% chance number of people is less than 0.29 and 2.5% it is more than 0.36
# Discrete Data
# One Proportion test

# One proportion when the proportion of an event calculated from a sample has to be compared against a claim value
prop.test(12,22,p = 0.6,alternative = 'less')
prop.test(12,150,p = 0.07,alternative = 'greater')
# Two proportion test
# The difference of the proportions from two different samples against a claim value to establish whether the difference between them is significant or not
# Ho(verbal) - Bangalore has at least 2% less affected people as compared to Mumbai
# Ho - prop(Mumbai) - prop(Bangalore) >= 0.02
Mumbai = c(27,170)
Bangalore = c(32,200)
# two proportion test, we ain't allowed to put claim value in command
# the p-value is misleading
prop.test(c(Mumbai[1],Bangalore[1]),c(Mumbai[2],Bangalore[2]),alternative = 'less')
# chi-square test()
# 1. Goodness of fit test(one variable)
# This test is used when we wish to compare the counts of the categories from a sample against the pattern which has been claimed, 
# to establish whether the counts follow the pattern or not the null hypothesis in this case is that the counts follow the pattern
# Maruti, Hyundai, TATA, Mahindra
Maruti = 0.45
Hyundai = 0.3
TATA = 0.2
Mahindra = 0.05
Maruti_count = 105
Hyundai_count = 94
TATA_count = 56
Mahindra_count = 12
cars = c('Maruti','Hyundai','TATA','Mahindra')
counts = c(Maruti_count,Hyundai_count,TATA_count,Mahindra_count)
pattern = c(Maruti,Hyundai,TATA,Mahindra)
sum(pattern)
# Ho - Counts obtained from the sample follow the pattern
chisq.test(counts,p = pattern)
cars_df = data.frame(cars,counts,pattern)
cars_df
write_xlsx(cars_df,"Chi-Square.xlsx")
# 2. Degree of association - two variables
# Eg. Restaurant - type of food is 1st variable, gender is 2nd variable
# Var1 = type of food
# Var2 = gender
# whether type of food ordered depends on the gender or not
# The two variables are also known as factors
# The chi-square degree of association test is used when we are working with two variables
# The purpose of this tool is to establish whether the counts obtained on the levels of one particular factor the level of the other factor or not
# Ho - The type of food ordered does not depend on the gender
males = c(34,28,12)
females = c(13,14,27)
food = rbind(males,females)
colnames(food) = c('North','South','Chaat')
food
chisq.test(food)
# reject Ho- The type of food ordered DEPENDS on the gender
chisq.test(cbind(males,females))
# One sample Poisson rate
# Purpose - the one sample poisson rate is used when we wish to compare the average counts of a particular incident against the claim value
#Eg.
# Ho the number of absentees <= 7
abst = c(10,6,5,8,9)
mean(abst)
poisson.test(round(mean(abst)),r = 7,alternative = 'greater')
# Two sample Poisson rate
# the ratios of the average counts will be compared against a claim value
# Ho - The # of absentees in DBMS is at least 1.3 times more than the # of absentees in R
# Hp - abst(DBMS)/abst(R) >= 1.3
poisson.test(c(8,7),r = 1.3, alternative = 'less')
