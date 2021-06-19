class BSTNode:
    def __init__(self,key):
        self.key = key
        self.left = None
        self.right = None
        self.parent = None
    def insert(self,node):
        if self.key > node.key:
            if self.left is None:
                self.left = node
                node.parent = self
            else:
                self.left.insert(node)
        elif self.key < node.key:
            if self.right is None:
                self.right = node
                self.parent = self
            else:
                self.right.insert(node)
    def preorder(self):
        print(self.key,end='')
        if self.left is not None:
            self.left.preorder()
        if self.right is not None:
            self.right.preorder()
    def inorder(self):
        if self.left is not None:
            self.left.inorder()
        print(self.key,end='')
        if self.right is not None:
            self.right.inorder()
    def postorder(self):
        if self.left is not None:
            self.left.postorder()
        if self.right is not None:
            self.right.postorder()
        print(self.key,end='')
    def replace_node_of_parent(self,new_node):
        if self.parent is not None:
            if new_node is not None:
                new_node.parent = self.parent
            if self.parent.left == self:
                self.parent.left = new_node
            elif self.parent.right == self:
                self.parent.right = new_node
        else:
            self.key = new_node.key
            self.left = new_node.left
            self.right = new_node.right
            if new_node.left is not None:
                new_node.left.parent = self
            if new_node.right is not None:
                new_node.right.parent = self
    def find_min(self):
        current = self
        while current.left is not None:
            current = current.left
        return current
    def remove(self):
        if (self.left is not None and self.right is not None):
            successor = self.right.find_min()
            self.key = successor.key
            successor.remove()
        elif self.left is not None:
            self.replace_node_of_parent(self.left)
        elif self.right is not None:
            self.replace_node_of_parent(self.right)
        else:
            self.replace_node_of_parent(None)
    def search(self,key):
        if self.key > key:
            if self.left is not None:
                return self.left.search(key)
            else:
                return None
        elif self.key < key:
            if self.right is not None:
                return self.right.search(key)
            else:
                return None
        return self
class BSTree:
    def __init__(self):
        self.root = None
    def preorder(self):
        if self.root is not None:
            self.root.preorder()
    def inorder(self):
        if self.root is not None:
            self.root.inorder()
    def postorder(self):
        if self.root is not None:
            self.root.postorder()
    def add(self,key):
        new_node = BSTNode(key)
        if self.root is None:
            self.root = new_node
        else:
            self.root.insert(new_node)
    def remove(self,key):
        to_remove = self.search(key)
        if(self.root == to_remove and self.root.left is None and self.root.right is None):
            self.root = None
        else:
            to_remove.remove()
    def search(self,key):
        if self.root is not None:
            return self.root.search(key)
bstree = BSTree()
print('Menu (this assumes no duplicate keys)')
print('add <key>')
print('remove <key>')
print('display')
print('quit')
while True:
    do = input('What would you like to do? ').split()
    operation = do[0].strip().lower()
    if operation == 'add':
        key = int(do[1])
        bstree.add(key)
    elif operation == 'remove':
        key = int(do[1])
        bstree.remove(key)
    elif operation == 'display':
        print('Preorder Traversal: ', end ='')
        bstree.preorder()
        print('\nInorder Traversal: ', end ='')
        bstree.inorder()
        print('\nPostorder Traversal: ', end ='')
        bstree.postorder()
        print()
    elif operation == 'quit':
        break