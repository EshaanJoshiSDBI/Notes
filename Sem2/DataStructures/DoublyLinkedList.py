class DListNode:
    def __init__(self, data = None, prev = None, next = None):
        self.data = data
        self.prev = prev
        self.next = next
    def __repr__(self):
        return repr(self.data)
class DoublyLinkedList:
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
        data = input('Enter the Element: ')
        new_head = DListNode(data = data, next = self.head)
        if self.head:
            self.head.prev = new_head
        self.head = new_head
    def append(self):
        data = input('Enter the Element: ')
        if not self.head:
            self.head = DListNode(data = data)
            return
        curr = self.head
        while curr.next:
            curr = curr.next
        curr.next = DListNode(data = data, prev = curr)
    def display(self):
        print(lst)
    def find(self,key):
        ''' Search for the first element with data matching "key" return the element or None if not found. Takes 0(n) time'''
        curr = self.head
        while curr and curr.data != key:
            curr = curr.next
        return curr # will be none if not found
    def remove_elem(self,node):
        """ Unlink an element from the list/ Takes 0(1) time"""
        if node.prev:
            node.prev.next = node.next
        if node.next:
            node.next.prev = node.prev
        if node is self.head:
            self.head = node.next
        node.prev = None
        node.next = None
    def remove(self):
        """ Remove the first occurence of 'key' in the list. Takes 0(n) time"""
        key = input('Enter the element to remove: ')
        elem = self.find(key)
        if  elem:
            return self.remove_elem(elem)
    def reverse(self):
        curr = self.head
        prev_node = None
        while curr:
            prev_node = curr.prev
            curr.prev = curr.next
            curr.next = prev_node
            curr = curr.prev
        self.head = prev_node.prev
lst = DoublyLinkedList()
class Switch:
    def switch(self,option):
        return getattr(self, 'case_' + option, lambda: print('Invalid Operation'))()
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
    print('1. Create / Append')
    print('2. Add an item in the beginning')
    print('3. Delete a node')
    print('4. Reverse')
    print('5. Display')
    option = input('Enter your option ')
    s.switch(option)
    choice = input('Press "Y" to continue ')
    if choice != 'y' and choice != 'Y':
        break