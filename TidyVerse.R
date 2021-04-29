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
