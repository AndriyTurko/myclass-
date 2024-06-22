class Test3():
    def __init__(self, name):
        self.name = name

    @property
    def full_name(self):
        print('inside the getter')
        return 'Mr. ' + self.full_name2


    @full_name.setter
    def full_name(self, surname):
        print('inside the setter')
        self.full_name2 = self.name + ' ' + surname


    def sum(self, a, b):
        s = a + b
        print(s)
        return s

    def print_attr(self):
        print('Hello', self.name)
        return self.name


class EmailPerson(Test3):
    def __init__(self, name, email):
        super().__init__(name)
        self.email = email

    def sum(self, a, b, c):
        s = super().sum(a, b) + c
        print('hello world', s)
        return s

    def print_attr(self):
        name2 = super().print_attr()
        print('Your email is ', self.email)
        return name2, self.email
