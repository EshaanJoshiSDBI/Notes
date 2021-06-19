# Total amount
weekdays = 1500
weekends = 2000
days = c(5,4,6,3,5,4,6)
sum(days[1:5]*1500,days[6:7]*2000)
fees = rep(c(1500,2000),c(5,2))
sum(days*fees)