#numbers = as.numeric(readline('Enter the numbers'))
inp1 = readline("Enter the numbers:")
inp = as.numeric(unlist(strsplit(inp1, ",")))
inp
paste('The biggest value in the list of numbers is: ',max(inp))