library(moments)
erupt = faithful$eruptions
sum(erupt)/length(erupt)
mean(erupt)
x = c(4,6,8,2,3,1)
mean(x)
median(erupt)
y = sort(erupt)
length(erupt)/2
y[c(length(erupt)/2,length(erupt)/2+1)]
salaries = c(6,7,8,7,6,7,6,7,8,7,6,7,8,7,7,7,6,8,54,58)
mode(salaries)
mode(erupt)
table(salaries)
erupt_freq = table(erupt)
which(erupt_freq==max(erupt_freq))
erupt_freq[11]
sal_freq = table(salaries)
which(sal_freq==max(sal_freq))
length(which(erupt==1.867))
