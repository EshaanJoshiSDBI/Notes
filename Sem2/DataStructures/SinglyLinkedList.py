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
# driver code
class Switch:
    def switch(self,option):
        return getattr(self, 'case_' + option, lambda: print('Invalid operation'))
    def case_1(self):
        return lst.append()
    def case_2(self):
        return lst.prepend()
    def case_3(self):
        return lst.remove()
    def case_4(self):
        return lst.reverse()
    def case_5(self):
        return lst.Display()
s = Switch()
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