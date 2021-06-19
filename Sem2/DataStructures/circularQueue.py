class circularQueue():
    def __init__(self,size):
        self.size = size
        # Initializing queue with none
        self.queue = [None for i in range(size)]
        self.front = self.rear = -1
    def enqueue(self):
        if ((self.rear + 1) % self.size == self.front):
            return print('Queue is full')
        data = input('Enter the value to be added ')
        # ! condition for empty stack
        if(self.front == -1):
            self.front = 0
            self.rear = 0
            self.queue[self.rear] = data
        else:
            # next position of rear
            self.rear = (self.rear + 1) % self.size
            self.queue[self.rear] = data
        print('Value added successfully')
    def dequeue(self):
        if self.front == -1:
            return print('Queue is empty')
        elif self.front == self.rear:
            self.front = -1
            self.rear = -1
        else:
            self.front = (self.front + 1) % self.size
        print('Value deleted successfully')
    def printQueue(self):
        if self.front == -1:
            print('Queue is empty')
        elif self.rear >= self.front :
            print('Elements in the circular queue are: ', end = ' ')
            for i in range(self.front, self.rear + 1):
                print(self.queue[i], end = ' ')
            print()
        else:
            print('Elements in Circular queue are:',end = ' ')
            for i in range(self.front, self.rear + 1):
                print(self.queue[i],end = ' ')
            for i in range(0,self.rear + 1):
                print(self.queue[i],end = ' ')
            print()
        if(self.rear + 1) % self.size == self.front:
            print('Queue is full')
class Switch:
    def switch(self,option):
        return getattr(self,'case_' + option, lambda: print('Invalid Operation'))()
# Adding a value to the queue    
    def case_1(self):
        return q.enqueue()
# Deleting a value from the queue    
    def case_2(self):
        return q.dequeue()
# returning the size of the queue    
    def case_3(self):
        return q.size()
# Displaying the queue    
    def case_4(self):
        return q.printQueue()
s = Switch()
q = circularQueue(5)
#! Driver code
while True:
    print('1. Add')
    print('2. Delete')
    print('3. Size')
    print('4. Display')
    option = input('Enter your option ')
    s.switch(option)
    choice = input('Press "y" to continue')
    if choice != 'y' and choice != 'Y':
        break  