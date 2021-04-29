stu_name = c("Eshaan","Aditi","Sharvari","Ajitesh","Vansh")
marks = c(78,69,92,47,68)
result = data.frame(Name=stu_name, Marks=marks)
sort(marks)
order(marks)
result$City = c("Mumbai","Mumbai","Pune","Mumbai","Pune")
ind = with(result, order(City,Marks))
result[ind,]
