#! Write a program to calculate the factorial of a given umber using recursion
def factorial(n):
    if n == 1:
        return 1
    else:
        return n * factorial(n-1)
    
print('Enter a value')
a = int(input())
ans = factorial(a)
print('Anwser = ',ans)