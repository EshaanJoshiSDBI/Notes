# Write a program to implement the following oprations on a stack 1) Push 2) Pop 3) Peek 4) Display
class Stack:
# Constructor creates a list
    def __init__(self):
        self.stack = list()
# Adding elements to stack top
    def push(self):
        x = input('Enter data to be added: ')
        self.stack.append(x)
        return('Value added successfully')
# Removing the last element from the stack
    def pop(self):
        if len(self.stack)>0:
            self.stack.pop()
            print('Value deleted successfully')
        else:
            print('Stack empty!')
# Getting the size of the stack
    def peek(self):
        print(self.stack[len(self.stack)-1])
# Printing the elements of the stack
    def display(self):
        print(self.stack)
q = Stack()
class Switch:
    def switch(self,option):
        return getattr(self,'case_'+option,lambda: print('Invalid option'))()
    def case_1(self): #Add
        return q.push()
    def case_2(self):#Delete
        return q.pop()
    def case_3(self):#Size
        return q.peek()
    def case_4(self):#Display
        return q.display()
s = Switch()
while True:
    print('1. Push')
    print('2. Pop')
    print('3. Peek')
    print('4. Display')
    option = input('Enter your option: ')
    s.switch(option)
    choice = input('Press "Y" to continue: ')
    if choice !='y' and choice !='Y':
        #raise ValueError('Invalid option')
        break