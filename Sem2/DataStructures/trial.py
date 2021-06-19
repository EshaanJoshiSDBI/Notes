def toPostfix(infix):
    stack = []
    postfix = ''

    for c in infix:
        if isOperand(c):
            postfix += c
        else:
            if isLeftParenthesis(c):
                stack.append(c)
            elif isRightParenthesis(c):
                operator = stack.pop()
                while not isLeftParenthesis(operator):
                    postfix += operator
                    operator = stack.pop()              
            else:
                while (not isEmpty(stack)) and hasLessOrEqualPriority(c,peek(stack)):
                    postfix += stack.pop()
                stack.append(c)

    while (not isEmpty(stack)):
        postfix += stack.pop()