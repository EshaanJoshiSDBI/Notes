'''
Write a program to perform the following operations on a singly linked list
1. Create a list/ Append to a list
2. Add a node at the beginning of the list
3. Delete a node
4. Reverse the list
5. Display the list'''
class listnode:
    def __init__(self, data = None, next = None):
        self.data = data
        self.next = next
    def __repr__(self):
        return repr(self.data)
class singlylinkedlist:
    def __init__(self):
        self.head = None
    def __repr__(self):
        nodes = []
        curr = self.head
        while curr:
            nodes.append(repr(curr))
            curr = curr.next
            return '[' + ','.join(nodes) + ']'
    def prepend(self):
        data = input('Enter the element ')
        if self.empty():
            self.head = listnode(data=data)
        else:
            curr = self.head
            curr.next = curr.head
            self.head = listnode(data = data,next = self.head)
        print(lst)
    def append(self):
        data = input('Enter the element ')
        # if not self.head:
        #     self.head = listnode(data = data)
        #     return
        curr = self.head
        while curr.next:
            curr = curr.next
        curr.next = listnode(data = data)
        print(lst)
    def find(self,key):
        curr = self.head
        while curr and curr.data != key:
            curr = curr.next
        return curr
    def remove(self):
        key = input('Enter the element ')
        curr = self.head
        prev = None
        while curr and curr.data != key:
            prev = curr
            curr = curr.next
        if prev is None:
            self.head = curr.next
        elif curr:
            prev.next = curr.next
            curr.next = None
        print(lst)
    def reverse(self):
        curr = self.head
        prev_node = None
        next_node = None
        while curr:
            next_node = curr.next
            curr.next = prev_node
            prev_node = curr
            curr = next_node
        self.head = prev_node
    def display(self):
        print(lst)
lst = singlylinkedlist()
# driver code
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
        return lst.reverse()
    def case_5(self):
        return lst.display()
s = Switch()
while True:
    print('1. Create / Append to the list')
    print('2. Add in the beginning')
    print('3. Delete a node')
    print('4. reverse the list')
    print('5. Display the list')
    option = input('Enter your option ')
    s.switch(option)
    choice = input('press "Y" to contiue: ')
    if choice !='y' and choice != 'Y':
        break