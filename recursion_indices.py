def power(base,exponent):
    if exponent == 0:
        return 1
    else:
        return base * power(base,exponent - 1)

# Driver code
base = int(input('Enter the base '))
exponent = int(input('Enter the exponent '))
print(power(base,exponent))