# Question number 16, Take a input from the user and print whether the number is prime or not.
isprime = function() 
{
  input = as.numeric(readline('Enter the number to be checked '))
  n = input / 2
  prime_status = TRUE
  for( i in 2:n) 
  {
    if(input %% i == 0)
    {
      prime_status = FALSE
    }
  }
  
  if(input == 2)
  {
    prime_status = TRUE
  }
  if(prime_status)
  {
    paste(input,' is a prime Number')
  }
  else
  {
    paste(input,' is a composite Number')
  }
}
# Question number 17, Write a program which takes the input of any two numbers from the user and prints all the even numbers between them. The input numbers could be either even or odd.
even_no = function()
{
  list_even = c()
  lowerlimit = as.numeric(readline('Enter the first number(lower limit) '))
  upperlimit = as.numeric(readline('Enter the second number(upper limit) '))
  for(i in lowerlimit:upperlimit)
  {
    if(i %% 2 == 0)
    {
      list_even = append(list_even,i,after = length(list_even))
    }
  }
  print(list_even)
}
# Question number 18, Create a  vector of any 10 number. Write a program which creates a vector which stores the square of all the even numbers in the vector
# The 10 numbers are taken from the user as input, the user has the option to choose the default vector (1:10)
square_even = function()
{
  default_vector = c(1,2,3,4,5,6,7,8,9,10)
  ask_default = readline('Do you want to use the default vector?(Press y to use default vector) ')
  if(toupper(ask_default) == 'Y' )
  {
    choosen_vector = default_vector
  }
  else
  {
    print('enter the numbers seperated by commas eg,(1,2,3,4,5)')
    inp1 = readline("Enter the numbers:")
    inp = as.numeric(unlist(strsplit(inp1, ",")))
    choosen_vector = inp
  }
  list_square_even = c()
  for ( i in choosen_vector)
  {
    if(i %% 2 == 0)
    {
      list_square_even = append(list_square_even,i^2,after = length(list_square_even))
    }
  }
  print(list_square_even)
}