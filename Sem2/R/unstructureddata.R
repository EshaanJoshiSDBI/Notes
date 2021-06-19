library(stringr)
students = 'Eshaan has 3 book, Aditi has 4 bags, Vansh has 5 pencils and Sharvari has 17 papers'
str_extract_all(students, '[A-Z]+[a-z]+')
str_replace_all(students,'papers','sheets')
length(str_extract_all(students, '[a][a]')[[1]])
students_name = str_extract_all(students, '[A-Z]+[a-z]+')[[1]]
students_items_quantity = str_extract_all(students,'\\d+')[[1]]
students_matrix = rbind(students_name,students_items_quantity)
length(str_extract_all(students,'[aeiouAEIOU]')[[1]])
students_matrix = cbind(students_name,students_items_quantity)
str_extract_all(students, '[A-Z]+[a-z]{4}')[[1]]
str_extract_all(students,'[a-dp-t1-5]')
str_extract_all(students,'[A-Za-z]')
teacher = "Sir's name is Sudeep
Sir is here to teach us about R
Sir has 21 years of experience"
str_extract_all(teacher, '\\n')[[1]]
x = 'R.RR.RRR.RRRR'
str_extract_all(x,'.+')[[1]]
str_extract_all(x,'R+')[[1]]
str_extract_all(x,'\\.+')[[1]]
str_extract_all(x,'\\.+')[[1]]
str_extract_all(x,'R{2,4}')[[1]]
length(str_extract_all(students, '[a-z]')[[1]])
