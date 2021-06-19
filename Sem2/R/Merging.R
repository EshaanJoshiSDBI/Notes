employees_dep = read_excel('employees.xlsx')
employees_sal = read_excel('employees.xlsx',sheet = 'sal')
# Rows which are common in both dfs
employees = merge(employees_dep,employees_sal)
# all rows
employees = merge(employees_dep,employees_sal, all = TRUE)
# Left Join
# dep - left, sal - right
# all rows from left will appear
# in left df no NA value will be there, there might be NA in right dfs
employees = merge(employees_dep,employees_sal,all.x = TRUE)
# Right Join
emp_name = readline('Enter the name of the employee ')
id = which(grepl(emp_name,employees$Name))
dept_name = employees$Deptt[id]
print(dept_name)
