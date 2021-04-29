format = 'YYYY/MM/DD'
bd_Eshaan = as.Date('2002/05/11')
str(bd_Eshaan)
seq(bd_Eshaan, by = '2 months', length.out = 6)
quarters(seq(bd_Eshaan, by = '2 months', length.out = 6))
today = as.Date('2021/04/29')
today - bd_Eshaan
inp = '15 April 2018'
as.Date(inp, format = '%d %B %y')
inp1 = '15/04/2018'
###
format(as.Date(inp1, format = '%d/%m/%y'), '%d/%m/%y')
###
