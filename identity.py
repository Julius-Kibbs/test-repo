class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

    def introduction(self):
        print("My name is " + self.name + ", I am " + str(self.age) + " years old and a " + self.gender)

person = Person("Jake", 22, "male")
person.introduction()