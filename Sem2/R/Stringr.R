library(stringr)
fruit[str_detect(fruit,' ')]
cricketer = 'Sachin Ramesh Tendulkar'
str_count(cricketer,' ')
str_locate_all(cricketer, " ") # all occurrences of the pattern in the string are reported 
str_locate(cricketer, " ") # first occurrence of the pattern in the string is reported
str_replace('Sudeep','ee','i')
str_replace_all('Navi Mumbai road',' ','_')
str_to_title('eshaan joshi')
str_count('aaaaa')
students = c('Eshaan','Aditi','Venkatesh','Sudeep','Yash')
str_length(students)
str_trunc(students,4,side = 'left')
str_trunc(students,4)
str_pad(students,9)
str_pad(students,9,side = 'right')
str_trim(students)
str_trim(students,side = 'right')
id = c('A','B','C','D','E')
paste('Sample',id,sep = '-')
str_c(LETTERS,letters)
