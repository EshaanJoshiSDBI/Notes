# Driver code
class Node:
    def __init__(self,data):
        self.data = data
        self.next = None
class Stack:
    def __init__(self):
        self.head = None
    def isempty(self):
        if self.head == None:
            return True
        else:
            return False
    def push(self):
        data = input('Enter the data to be added: ')
        if self.head == None:
            self.head = Node(data)
        else:
            newnode = Node(data)
            newnode.next = self.head
            self.head = newnode
        print('Value Added successfully')
    def pop(self):
        if self.isempty():
            print('No value to Remove')
        else:
            poppednode = self.head
            self.head = self.head.next
            poppednode.next = None
            print('Value popped successfully')
    def peek(self):
        if self.isempty():
            return None
        else:
            print(self.head.data)
    def display(self):
        iternode = self.head
        if self.isempty():
            print("Stack underflow")
        else:
            while(iternode != None):
                print(iternode.data, '->',end= " ")
                iternode = iternode.next
            return
lst = Stack()
class Switch:
    def switch(self,option):
        return getattr(self, 'case_' + option, lambda: print('Invalid Option'))()
    def case_1(self):
        return lst.push()
    def case_2(self):
        return lst.pop()
    def case_3(self):
        return lst.peek()
    def case_4(self):
        return lst.display()
s = Switch()
while True:
    print('1. Push')
    print('2. Pop')
    print('3. Peek')
    print('4. Display')
    option = input('Enter your option: ')
    s.switch(option)
    choice = input('Press "Y" to continue: ')
    if choice != 'y' and choice != 'Y':
        break