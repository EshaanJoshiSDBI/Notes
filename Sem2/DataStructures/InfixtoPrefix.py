class infixtoprefix:
    precedence = {'^':5,'*':4,'/':4,'+':3,'-':3,'(':2,')':1}
    def __init__(self):
        self.items = []
        self.size = -1
    def push(self,value):
        self.items.append(value)
        self.size +=1
    def pop(self):
        if self.isempty():
            return 0
        else:
            self.size -= 1
            return self.items.pop()
    def isempty(self):
        if self.size == -1 :
            return True
        else:
            return False
    def seek(self):
        if self.isempty():
            return False
        else:
            return self.items[self.size]
    def isoperand(self,i):
        if i.isalpha() or i in '1234567890':
            return True
        else:
            return False
    def reverse(self,expr):
        rev = ''
        for i in expr :
            if i is '(':
                i = ')'
            elif i is ')':
                i = '('
            rev = i + rev
        return rev      
    def infixtoprefix(self,expr):
        prefix = ''
        for i in expr:
            if(len(expr)%2 == 0):
                print('Incorrect Inifx Expression')
                return False
            elif self.isoperand(i):
                prefix += i
            elif i in '+-/*^':
                while len(self.items) and self.precedence[i] < self.precedence[self.seek()]:
                    prefix += self.pop()
                self.push(i)
            elif i is '(':
                self.push(i)
            elif i is ')':
                o = self.pop()
                while o!= '(':
                    prefix += o
                    o = self.pop()
        while len(self.items):
            if self.seek() == '(':
                self.pop()
            else:
                prefix += self.pop()
        return prefix


s = infixtoprefix()
# ! driver code
exp = input('Enter the Infix Expression: ')
rev = ''
rev = s.reverse(exp)
result = s.infixtoprefix(rev)
if result !=False:
    prefix = s.reverse(result)
    print('Prefix Expression: ',prefix)