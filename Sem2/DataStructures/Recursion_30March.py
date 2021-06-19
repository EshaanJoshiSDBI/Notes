#! Write a program to calculate the sum of the values in a list using a recursive function
def sum_recursive(nums):
    if len(nums) == 0:
        return 0
    last_num = nums.pop()
    return last_num + sum_recursive(nums)

a = [2,4,6,7]
ans = sum_recursive(a)
print('Answer = ',ans)
#! Write a program to calculate GCD of any two numbers
def gcd(a,b):
    if b == 0:
        return a
    else:
        return gcd(b,a%b)
a = int(input('Enter your first number: '))
b = int(input('Enter your second number: '))
GCD = gcd(a,b)
print('GCD is: ')
print(GCD)