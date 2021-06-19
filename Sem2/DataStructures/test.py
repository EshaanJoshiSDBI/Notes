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