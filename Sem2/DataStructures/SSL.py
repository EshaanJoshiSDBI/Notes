class Node():
    def __init__(self,data = None,next = None):
        self.data = data
        self.next = next
class SinglyLinkedList():
    def __init__(self,head = None):
        self.head = head
        self.size = 0
    def empty(self):
        return 1 if self.head == None else 0
    def size(self):
        return self.size
    def node(self,data):
        newnode = Node(data)
        return newnode
    def create(self):
        data = input('Enter data ')
        newnode = self.node(data)
        self.head = newnode
        self.size += 1
        curr = self.head
    def prepend(self):
        data = input('Enter the data ')
        if self.empty():
            self.head = self.node(data)
        else:
            newnode = self.node(data)
            newnode.next,self.head = self.head,newnode
        self.size += 1
    def append(self):
        data = input('Enter the data ')
        if self.empty():
            self.head = self.node(data)
        else:
            newnode = self.node(data)
            curr  = self.head
            while curr.next != None:
                curr = curr.next
            curr.next = newnode
        self.size += 1
    def search(self):
        data = input('Enter the data ')
        ind = 0
        if self.empty():
            print('The list is empty mate')
            ind = None
            return
        curr = self.head
        while curr != None:
            if curr.data == data:
                print('{} is present at {}'.format(data,ind))
                return
            ind += 1
            curr = curr.next
        print("{} ain't present mate".format(data))
    def remove(self):
        data = input('Enter the element ')
        curr = self.head
        prev = None
        while curr and curr.data != data:
            prev = curr
            curr = curr.next
        if prev is None:
            self.head = curr.next
        elif curr:
            prev.next = curr.next
            curr.next = None
    def display(self):
        if self.empty():
            print("There's nothing in the list")
        else:
            curr = self.head
            while curr.next != None:
                print(curr.data)
                curr = curr.next
            print(curr.data)
lst = SinglyLinkedList()
class Switch:
    def switch(self,option):
        return getattr(self, 'case_' + option, lambda: print('Invalid operation'))()
    def case_1(self):
        return lst.append()
    def case_2(self):
        return lst.prepend()
    def case_3(self):
        return lst.remove()
    def case_4(self):
        return lst.find()
    def case_5(self):
        return lst.display()
s = Switch()
while True:
    print('1. Create the list or Append to the list')
    print('2. Add in the beggining')
    print('3. Delete a node')
    print('4. Find the index of an element')
    print('5. Display the list')
    option = input('Enter your option')
    s.switch(option)
    cont = input('Press "Y" to continue')
    if cont not in ['Y','y']:
        break