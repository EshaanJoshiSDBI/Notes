library(car)
data('Salaries')
head(Salaries)
str(Salaries)
mod1 = lm(salary ~ sex, data = Salaries) # reference event is Female
summary(mod1)
# changing reference event to male
Salaries$sex = relevel(Salaries$sex, ref = 'Male')
mod2 = lm(salary ~ sex, data = Salaries)
summary(mod2)
