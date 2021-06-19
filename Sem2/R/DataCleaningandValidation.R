library(readxl)
emp_info = read_excel('emp_info.xlsx')
is.na(emp_info)
ind = which(is.na(emp_info$Deptt))
deptt_missing = emp_info[ind,]
deptt_missing
deptt_ok = emp_info[-ind,]
deptt_ok
deptt_missing[2,3] = 'Quality'
r = deptt_missing[2,]
deptt_ok = rbind(deptt_ok,r)
deptt_missing = deptt_missing[-2,]
# finding rows with NA in multiple columns
indi = which(is.na(emp_info$EmpID) & is.na(emp_info$Deptt))
# find rows which don't have any missing values
indic = which(complete.cases(emp_info))
new_emp_info = emp_info[indic,]
ind_dup = which(duplicated(emp_info$Passport))
dup_passport = emp_info[ind_dup,]
dup_passport = unique(dup_passport$Passport)
dup_passport
new_ind_pass = which(emp_info$Passport %in% dup_passport)
emp_info[new_ind_pass,]
