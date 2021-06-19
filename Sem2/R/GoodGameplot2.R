library(ggplot2)
table(mtcars$cyl)
df = as.data.frame(table(mtcars$cyl))
df
ggplot(df,aes(x = Var1,y = Freq)) + theme_bw() + geom_bar(stat='identity')
ggplot(df,aes(x = Var1,y = Freq)) + theme_bw() + geom_bar(stat='identity',width = 0.5, fill = 'red')
ggplot(df,aes(x = Var1,y = Freq)) + theme_bw() + geom_bar(stat='identity',width = 0.5, fill = 'red') + coord_flip()
ggplot(df,aes('',Freq, fill = Var1)) +  geom_bar(stat = 'identity') + coord_polar('y')
x_vals = 1:10
y_vals = c(45,76,58,79,38,72,56,68,73,69)
df = data.frame(x_vals,y_vals)
df
ggplot(df,aes(x_vals,y_vals)) + geom_line()
ggplot(faithful, aes(x=waiting,y=eruptions)) + geom_point()
ggplot(mtcars,aes(cyl,gear,fill=mpg)) + geom_tile()
# Mosaic plot
countries = c('India','Japan','Russia','USA','China')
gdp = c(2,5,4,1,7)
health = c(1,3,5,2,4)
df = data.frame(countries,gdp,health)
ggplot(df,aes(gdp,health)) +geom_text(aes(label = countries))
