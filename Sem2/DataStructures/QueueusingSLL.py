class Node:
    def __init__(self,data):
        self.data = data
        self.next = None
class Queue:
    def __init__(self):
        self.front = self.rear = None
    def isEmpty(self):
        return  self.front == None
    def EnQueue(self):
        item = input('Enter the number to be added ')
        temp = Node(item)
        if self.rear == None:
            self.front = self.rear = temp
            return
        self.rear.next = temp
        self.rear = temp
    def DeQueue(self):
        if self.isEmpty():
            pass
    def Display(self):
        iternode = self.front
        if self.isEmpty():
            print('The queue is empty')
        else:
            while(iternode != None):
                print(iternode.data, '->',end = ' ')
                iternode = iternode.next
            return
lst = Queue()
    

class Switch:
    def switch(self,option):
        return getattr(self, 'case_' + option, lambda:print('Invalid operation'))()
    def case_1(self):
        return lst.EnQueue()
    def case_2(self):
        return lst.DeQueue()
    def case_3(self):
        return lst.Display()
s = Switch()
while True:
    print('1. Add data')
    print('2. Delete data')
    print('3. Display')
    option = input('Enter your option ')
    s.switch(option)
    choice = input('Press "Y" to continue: ')
    if choice != 'y' and choice != 'Y':
        break