# A series in which every number is the sum of the two preceding numbers is called as fibonacci series.
# Example 0 1 1 2 3 5 8 13
#! Write a program to generate a fibonacci series using recursion.
def recur_fibo(n):
    if n<=1:
        return n
    else:
        return(recur_fibo(n-1) + recur_fibo(n-2))
print('Enter number of terms')
n = int(input())
if n <= 0:
    print('Please enter a positive integer')
else:
    print('Fibonacci series: ')
    for i in range(n):
        print(recur_fibo(i))
