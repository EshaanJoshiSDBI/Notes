# ANOVA - Analysis of Variance
# One way anova is used when we're working with multiple samples (# of samples is >= 2), the purpose of this tool is to check
# and establish whether all the pair of the means can be considered or not.
# The null hypothesis would be that all the pairs of the means are equal
local = c(43.6,47.8,37.9,52.4,47.9,43.6,52.7)
cab = c(62,58,54.8,56.8,61,59.8)
metro = c(54.3,49.8,54.6,55,58,52.6)
time = c(43.6,47.8,37.9,52.4,47.9,43.6,52.7,62,58,54.8,56.8,61,59.8, 54.3,49.8,54.6,55,58,52.6)
mode = c('local','local','local','local','local','local','local','cab','cab','cab','cab','cab','cab','metro','metro','metro','metro','metro','metro')
slot =c()
df = data.frame(time,mode)
# Ho - all averages are equal
df = rbind(c(local,cab,metro))
aov_model = aov(time ~ mode, df)
anova(aov_model)
#---------------------
head(InsectSprays)
levels(InsectSprays$spray)
#Ho - all averages ar equal
#H1 - at least one not equal / all not equal
aov_model_2 = aov(count ~ spray,InsectSprays)
aov_model_2
anova(aov_model_2)
summary(aov_model_2)
TukeyHSD(aov_model_2)
# TWO WAY ANOVA
#1. Ho- marks are equal for all types of preparations
#2. Ho- marks are equal for all genders( marks don't depend on gender )
#----------------------------------------------------------------------
#1. Ho- time is same for all modes of transport
#2. Ho- time is same for all time slots
time = c(43.6,47.8,37.9,52.4,47.9,43.6,52.7,62,58,54.8,56.8,61,59.8, 54.3,49.8,54.6,55,58,52.6)
mode = c('local','local','local','local','local','local','local','cab','cab','cab','cab','cab','cab','metro','metro','metro','metro','metro','metro')
slot = c('AM','AM','AM','PM','PM','PM','PM','AM','AM','AM','PM','PM','PM','AM','AM','AM','PM','PM','PM')
df_new = data.frame(time,mode,slot)
two_aov_model_3 = aov(time ~ mode + slot, df_new)
anova(two_aov_model_3)
TukeyHSD(two_aov_model_3)
library(EnvStats)
erupt = faithful$eruptions
var(erupt)
# One variance test
# Ho v<=1, right tail
varTest(erupt,sigma.squared = 1, alternative = 'greater')
# Tw sample variance test
sampa = erupt[20:49]
sampb = erupt[120:149]
# Ho the variance of sampa and sampb are equal ( var(sampa) = var(sampb))
var.test(sampa,sampb,ratio = 1, alternative  ='two.sided')
