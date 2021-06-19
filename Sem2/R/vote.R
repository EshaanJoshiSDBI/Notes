func2 = function()
{
nationality = toupper(readline('Enter your nationality'))
if(nationality == 'INDIAN')
{
  age = as.numeric(readline('Enter your age'))
  if(age >= 18)
  {
    print('you are allowed to vote')
  }
  else if(age < 18)
  {
    paste('You have to wait for ', 18 - age, ' years')
  }
}
else
{
  print('Sorry you cannot vote here')
}
}