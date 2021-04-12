class Queue:
    def __init__(self):
        self.queue = list()
    def enqueue(self):
        x = input('Enter Data to be added: ')
        self.queue.append(x)
        return ('Value added successfully')
    def dequeue(self):
        if len(self.queue)>0:
            self.queue = self.queue[1:]
            print('Value removed successfully')
        else:
            print('Queue empty')
    def size(self):
        print(len(self.queue))
    def printQueue(self):
        print(self.queue)
q = Queue()
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
#! Driver code
while True:
    print('1. Add')
    print('2. Delete')
    print('3. Size ')
    print('4. Display')
    option = input('Enter your option')
    s.switch(option)
    choice = input('Press "y" to continue')
    if choice != 'y' and choice != 'Y':
        break