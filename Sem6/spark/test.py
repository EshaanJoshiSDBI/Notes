def factorial(num):
    res = 1
    for i in range(1,num+1):
        res *= i
    return res
def fac(num):
    if num == 1:
        return(1)
    else:
        return(num*fac(num-1))
print(factorial(6))
print(fac(6))