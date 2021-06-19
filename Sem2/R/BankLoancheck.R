print(BankLoan)
temp = subset(BankLoan, BankLoan$Education == 'Graduate' & BankLoan$Self_Employed == 'Yes')
nrow(temp)
factor = as.factor(BankLoan$Education)
levels(factor)
temp = subset(BankLoan,BankLoan$Self_Employed == 'Yes' & BankLoan$ApplicantIncome > 4000)
mar = subset(temp, temp$Married == 'Yes')
length(which(temp$Loan_Status == 'Y'))

check = function()
{
  self_emp_status = readline('Should the applicants be self employeed? ')
  if(self_emp_status == 'yes' | toupper(self_emp_status) == 'Y')
  {
    self_emp_status = 'Yes'
  }
  else
  {
    self_emp_status = 'No'
  }
  income = as.numeric(readline('What is the minimum applicant income? '))
  property_area = readline('What is the property area? ')
  if(property_area == 'rural' | toupper(property_area) == 'RURAL')
  {
    property_area = 'Rural'
  }
  else if(property_area == 'urban' | toupper(property_area) == 'URBAN')
  {
    property_area = 'Urban'
  }
  print(length(which(BankLoan$Self_Employed == self_emp_status & BankLoan$ApplicantIncome > income & BankLoan$Property_Area == property_area)))
}

for( i in 1:nrow(BankLoan))
{
  if( BankLoan$ApplicantIncome[i] + BankLoan$CoapplicantIncome[i] >= 9000)
  {
    BankLoan$fin_status[i] = 'Rich'
  }
  else
  {
    BankLoan$fin_status[i] = 'Poor'
  }
}