library(tidyr)

name = c("Eshaan",'Aditi','Sharavari',"Yash")
Sem1 = c(5,7,9,4)
Sem2 = c(3,9,6,3)
stu_db = data.frame(name,Sem1, Sem2) # Broad format
df_new = gather(stu_db, 'Sem1','Sem2',key = 'Semester',value = 'Marks') # Long format # Broad to Long
df_newer = spread(df_new,Semester,Marks) # Long to Broad
df = read_excel('df.xlsx')
mtcars
combinations = expand(mtcars,cyl,gear,carb)
View(combinations)
comb_values = complete(mtcars,cyl,gear,carb)
View(comb_values)
stu_name = c('Eshaan','Aditi','Ajitesh','Vansh')
marks = c(76,NA,75,NA)
result = data.frame(stu_name,marks)
drop_na(result,marks)
replace_na(result,list(marks = 60))
mtcars
mtcars$ratio = mtcars$mpg / mtcars$wt
mtcars[order(mtcars$ratio)]
mean(unique(mtcars$cyl))
avg_cyl_4 = mtcars$cyl[which(mtcars$cyl == 4),]
a = 4
b = 6
c = 8
avg_cyl_4 = which(mtcars$cyl %in% a,)
avg_cyl_6 = which(mtcars$cyl %in% b,)
avg_cyl_8 = which(mtcars$cyl %in% c,)
mean_cyl_4 = mean(mtcars$mpg[avg_cyl_4])
mean_cyl_6 = mean(mtcars$mpg[avg_cyl_6])
mean_cyl_8 = mean(mtcars$mpg[avg_cyl_8])
for (ctr in 1:length(vals)){
  sub1 = subset(mtcars, mtcars$cyl==vals[ctr])
  message("The mean for ",vals[ctr]," cylinders is ",mean(sub1$mpg))
}
round(23.62563,2)
round(23.62563,1)
23.62563 %>% round(1)
