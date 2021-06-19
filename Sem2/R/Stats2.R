head(faithful)
nrow(faithful)
help(faithful)
erupt = faithful$eruptions
length(erupt)
max(erupt)
min(erupt)
cat1 = '1.5-2.2'
cat2 = '2.2-3.7'
cat3 = '3.6-4.7'
cat4 = '4.7-5.2'
term_values = c(1.5,2.2,3.7,4.7,5.2)
erupt_cat = cut(erupt,term_values)
head(erupt_cat)
erupt_cat = cut(erupt,term_values,labels=c('low','mid','high','extreme'))
table(erupt_cat)
barplot(table(erupt_cat))
pie(table(erupt_cat))
erupt_prop = table(erupt_cat)/length(erupt)
erupt_prop = round(erupt_prop,3)
erupt_prop
erupt_pct = erupt_prop*100
cumsum(erupt_pct)
hist(erupt,term_values)
plot(faithful$waiting,faithful$eruptions)
plot(faithful$eruptions,faithful$waiting)
reported_cases = c(45,67,78,68,45,23)
plot(reported_cases,type = 'p')
plot(reported_cases,type = 'o')
plot(reported_cases,type = 'o',col = 'red')
