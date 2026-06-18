## Variables
# variable = player_choice
# string = "rock"
# variables can't start with number but they can use underscore and such
# double or single quotation works ' "
player_choice = "rock"
# a variable name can be composed of characters, numbers and underscore

# check the type of a variable
var = True
print(type(var) == bool)

## Statements
# a statement is when you're assigning an operation to a variable
# for example a = "hej" print(a)
# programs are formed by series of statements, each statement is put on 
# it's own line

## Control Statements
# if the condition is true then it is going to run everything in the block
# a block is defined by the part that is indented one level, either 2 or 4 spaces, it can be 1 space as long as all is
# indented the same amount
condition = True

if condition == True:
    print("The condition")
    print("was true")
# You can then print something outside the block by doing outside the block (-1 level of indentation)
print("outside if")
# same thing with the elif
# this will test the statement line by line, if condition is Roger, the program won't test Syd, Flavio or else statement
condition = True
name ="Roger"

if condition == True:
    print("The condition")
    print("was True")
elif name == "Roger":
    print("Hello Roger")
elif name == "Syd":
    print("Hello Syd")
elif name == "Flavio":
    print("Hello Flavio")
else:
    print("The condition")
    print("was False")



## Indentation
# indentation matters in python! You can't indent as you like, follow the right structure

## Function
# funcions helps us decompose a program into managable parts, and they promote readablity and code reuse

# Define = def
# get_choices variable name
# parenthesis () can be blank or take arg
# end with : to signify new line
# the variables within the function needs to be indented
def get_choices():
   player_choice
   computer_choice

   return computer_choice
# return ends the function and all the calculations / manipulation of the variables and such
# the return statement should also be indented the same amount as the function
# notice there's no need for extra stuff like parenthesis or colon on the return

## Print function
# you can make a function which returns a string, like in this example
# then make a variable that is equal to the function
# and then call the variable instead of the string itself
# notice there's no parenthesis or colon here neither
# you can insert data within the parenthesis () of a function, for example def greeting(hello,good_bye):
def greeting():
    return "hi"

    response = greeting()
print(response)

## Built-in functions
# abs returns the absolute number, basically makes it so it's not negative
print(abs(-5.5))
# round rounds to the nearest intiger. 5.5 =6, 5.49 = 5.
print(round(5.5))
# with round you can also round to a decimalpoint, 5.49, 1 would round to 5.5
print(round(5.49, 1))

# you first define the funcion with the def
# then you tell the function what it's supposed to do
# lastly you call the function by simply writing it out, in this case it only contains a print statement
# and will print hello in the terminal
def hello():
    print('hello!')
hello()
# the name of the function is very important, it should be descriptive so that people can understand what it does
# a function can accept one or more paramenters, the text within() is the parameters (remember this because you struggle with it)
# () = parameters
def function(name)
# a function with parameters can look like this
def hello(name)
    print(f'hello {name}')

hello("Beau")
hello("Quincy")
# this will print the 'hello' and add name to the end. The name is inserted in the hello(Beau)
# there's a difference between parameters and arguments
# we call the parameters the values accepted by the function inside the function definition () 
def hello(name)
# arguments are the values we pass to the function when we call it ("Beau")
hello("Beau")
# also an argument can have a default value that's applied if the argument is not specified
def hello(name="my friend")
    print(f'hello {name}')

hello()
or
hello("Quincy")
# it will print "my friend" if name is not specified or "Quincy" if it is.

# example with more than one parameter
def hello(name, age)
    print("Hello " + name ", you are "str(age)" years old!")
hello("Beau", 39)

# so parameters are passed by reference, all types in python are objects, but some of them are immutable
# including intigers, booleans, floats strings and tuples, this means that if you pass them as parameteters
# and you modify their value inside the function, the new value is not reflected outside the function
# GREAT EXAMPLE (with indentation aswell)
def change(value):
    value = 2
val = 1
change (val)
print (val)
# this will print the 1 because the value outside the function is immutable
# if we do the same thing with a mutable thing like a dictionary
def change(value):
    value["name"] = "Syd" 
val = {"name":"Beau"}
change(val)
print(val)
# the name will change because a dictionary is mutable
# a function can also return a value using the return statement
# a function can return a value using the return statement
def hello(name):
    print("hello" + name + "!")
    return name
# when a function meets a return statement it ends
# example: you can check if a function has a name and return it before the conditional if it does not
# this will return nothing if an argument "Beau" is missing when calling the function hello
def hello(name):
    if not name:
        return
    print("hello" + name + "!")

hello ("Beau")
# this is interesting because it will show what has been returned and the argument that was passed when calling the function
# notice how you can print the content of the returned statement by putting the 'print(hello("Syd"))'
def hello(name):
    print("hello" + name + "!")
    return name, "Beau", 8

print(hello ("Syd"))

## Variable scope
# one thing related to functions and also other parts of python is variable scope
# depending of where you declare a variable, if you declare a variable outside of a function
# the variable is visible to any code running after the declaration including functions
# this will be a global variable
# if you declare it inside a function, it will be a local variable and it will only be visible within the function

# example: this will work because the variable is defined outside the function, it will print 8 two times
age = 8

def test():
    print(age)

print(age) #8
test () #8

# this will give an error because of wrong indentation!
def test():
    age = 8
    print(age)

print(age) #8
test () #8

## Nested function
# functions in python can be nested inside other functions
# a function defined inside a function is only visible in that function
# this is useful to create utilities that are useful to a function but not useful outside of it
# it's always best to hide functionality that is local to a function if it's not useful elsewhere
# also because we can make use of closures
# example: this will split all the words into a vertical list with only one line per word.
def talk(phrase)
    def say(word)
        print(word)

    words = phrase.split(' ')
    for word in words:
        say (word)


talk('I am going to buy the milk')
# if you wanna access a variable defined in an outer function from the inner function, you first need to declare it as non-local
# this is especially useful with closures
def count():
    count = 0

    def increment():
        nonlocal count # Notice the nonlocal count here
        count = count + 1
        print(count)
    increment()
count()

## Closures
# closures are special way of doing functions in python. If you return a nested function from a function
# that nested function has access to the variables in that function, even if that function is not active anymore
# example:
def counter():
    count = 0 # Because we are calling the inner function in the code below, it's not going to reset the count back to 0 every time.
              # we return the increment inner function and that still has access to the state of the count variable, eventhough the counter function has ended

    def increment():
        nonlocal count
        count = count + 1
        return count # we are returning count from the nested increment function
    return increment # and from the outer function counter, we are returning the nested function increment

increment = counter() # instead of just calling the function directly, we are assigning the function to this variable (the nested function)
print(increment()) #1 # now we call the variable increment, which is the returned inner function
print(increment()) #2
print(increment()) #3

## Objects
# everything in python is an object!
# even values of basic primitive types (int, float, strings)
# objects have attributes and methods
# they can be accessed using the . syntax
# variable.example
age = 8 # age now has access to the properties and methods defined for all int objects
        # this includes for example access to the real and imaginary part of that number
print(age.real)
print(age.imag) # this will return 0 because there is not imaginary part of the number
print(age.bit_length()) # returns the number of bits necessary to represent this number in binary notation

# list.example
items = [1, 2]
items.append(3)
items.pop()
print(id(items)) # this shows the ID of the items object

## Loops
# while loop
# example
condition = True

while condition == True:
    print("The condition is True")
    condition = False # without this line the while loop would be infinite
                      # with the updated condition it will stop after one iteration because the condition is updated in the function
# it's common to have a counter to stop the iteration after some number of cycles
count = 0

while count < 10:
    print("The counter is True")
    count = count + 1
    # count += 1 would have been a better way of doing this!
    # remember the bitwise operators and arithmetic ones!!!! 
print("After the loop")

# for loop
# example
items = [1, 2, 3, 4]
    for items in items:
        print(item)
# it's commonly used to iterate the items in a list
# for each item in the list we are going to print the item

# you can iterate a specific amount of times using a range
# this will print 0-14
for item in range(15):
    print(item)
# to show the index of the items in a list
# you put the items within square brackets '[]'
# and then use the enumerate
items = [1, 2, 3, 4]
    for index, item in enumerate(items):
        print (index, item)
# this is useful for visualizing the indexing of a list. Makes it very readable, but I don't know what to do with it

## Break and continue
# example, this would skip the second iteration and continue to the third
items [1,2,3,4]
    for item in items:
        if item == 2:
            continue
        print(item)
# both while and for loops can be interrupted inside the block using either break or continue
# continue stops the current iteration and tells python to execute the next one
# break stops the loop alltogether and goes on with the next instruction after the loop ends        
# example break (this would break the look on the third iteration )
items [1,2,3,4]
    for item in items:
        if item == 3:
           break
        print(item)

## Classes
# in addition to using the python provided types we can declare our own classes, and from the classes we can
# instatiate (represent an abstract concept with a concrete example ) objects
# an object is an instance of a class, a class is the type of an object
class Dog:
    def bark(self): # self as an argument of the method dog, will point to the current object instance and must be specified when defining a method
                    # when you're creating a method inside a class you're always going to start with self
        print("Woof!") # we create an instance of a class which is an object


roger = Dog()

print(type(roger))

# there is a special type of method called init which is a constructor
class Dog:
    def __init__(self, name, age): # we can use a constructor like this, to initialize one more property when we create a new propery from that class
        self.name = name # we always have to add self, but then we also have two variables we can pass in when we create a dog
        self.age = age   # that will be associated with that object

    def bark(self): 
                    
        print("Woof!") 


roger = Dog("Roger", 8) # now when we create this dog it's goinng to assign to self.name and the age to self.age

print(roger.name)
print(roger.name)
print(roger.bark()) # this will return None, because we are already printing the woof in the bark function, either we
                    # return "Woof!" in the bark function or we don't print roger.bark() and call the function instead
# one important feature of class is inheritance
# example: new class before the dog class

class Animal:
    def walk(self):
        print("Walking...")

class Dog(Animal): # By typing () after dog and passing in the Animal class and now the Dog class is going to inherit from the Animal class
    def __init__(self, name, age): 
        self.name = name 
        self.age = age   

    def bark(self): 
                    
        print("Woof!") 


roger = Dog("Roger", 8) 

print(roger.name)
print(roger.name)

roger.bark() 
roger.walk()               

## Modules
# every python file is a module
# you can import modules from another file and that is the base of any program of moderate complexity
# it promotes a sensible organization and code reuse
# basically you can have more than one file
# one file acts as the entry points and the other files are modules and expose functions that we can call from other files
# example
main.py #first file
#alt.1: import dog()
#alt.2: from dog import bark()

#alt.1: dog.bark()
#alt.2: bark()

dog.py #second file
def bark()
    print("woof!")

# if dog.py is in a subfolder called "lib" for example, you can still access it with an __init__.py file. this tells python that the folder contains modules
# example
main.py #first file
#alt.1: from lib import dog()
#alt.2: from lib.dog import bark

#alt.1: dog.bark()
#alt.2: bark()

lib #subfolder
__init__.py #init file that tells python that library is contained within this folder
dog.py #lib folder containing weird noices
def bark()
    print("woof!")
    
## Dictionaries
# dictionaries are used to store data values in key value pairs
# the key value pairs are separated by ,
# key = name
# value = beau
# key = color
# value = blue
dict {"name": "beau", "color": "blue"}
# the values can be a variable instead of a string
# for example:
dict = {"name": response}
# this will make the key "name" have the value of response, greeting() in this case
# it is common to put spaces between the curly braces to improve readability
dogs = { "name": "Roger", "age" : 8 }
print(dog["name"])
# you can update the name with
dogs = { "name": "Roger", "age" : 8 }
dogs["name"] = "Syd"
print(dogs)
# another way to get a specific element is with .get
dogs = { "name": "Roger", "age" : 8 }
print(dogs.get("name"))
# you can add a default value with this, if there is no key called color in the dictinary, you can add a default with the .get
print(dogs.get("color", "brown"))
# if there is a default value "color" : "blue"
# it can't be overwritten with the .get

# with the .pop you return the item and delete the item
dogs = { "name": "Roger", "age" : 8 }
print(dogs.pop("name"))

# .popitem method it's going to retrieve and remove the last keyvalue pair inserted in the dictionary

# same thing here, you can check if a key is contained in a dictionary with the "in" method
dogs = { "name": "Roger", "age" : 8 }
print("color" is in dogs)
# get a list with the keys in a dictionary with the keys method
print(dogs.keys())
# you can prefix it with the list key to return just the list
print(list(dogs.keys()))

## Input
# to create an input, simply write
variable = input("Enter input here") 
# the input is defined within the parenthesis and the quotation marks signifies what question or prompt

# this is a sloppy way of doing it
print("What is your age? ")
age = input()
print(f"Your age is "{age})

# the better way in this case would be to
age = input("What is your age? ")
print(f"Your age is "{age})

# You can also do more complex input processing and accept input at program invokation time
# if you want to get the input when the program is run, that is going to work better for a command line applications
# other kinds of applications  will need different ways accepting inputs


## Libraries
# libraries are a set of useful functions so you don't have to write code from scratch
# when you import a library you get access to more features without writing extra code
import random, import math

# regular used python standard libraries
math        - math utilities
re          - regular expressions
json        - to work with JSON
datetime    - work with dates
sqlite3     - SQLite
os          - Operating System Utilities
random      - random number generation
statistics  - statistics utilities
requests    - HTTP network requests
http        - create HTTP server
urllib      - manage URL:s

# example with import math
'import math' OR 'from math import sqrt'
print(math.sqrt(4))

## Miscellanious slightly more advanced
# arguments from the command line
terminalprogram.py
import sys

name = sys.argv[1]
print("Hello " + name)
#in terminal#
python terminalprogram.py Beau

# better way of doing it!
main.py
import argparse

parser = argparse.ArgumentParser(
    description = "This program prints the name of my dogs"
)

parser.add.argument('-c', '--color', metavar='color', required=True, choices={'red', 'yellow'}, help='the color to search for')

args = parser.parse_args()

print(args.color)

terminal: python main.py -c red/yellow not blue because it's not defined in the choices

## Lambda functions (anonymous functions)

# are tiny functions that have no name and only have one expression as their body.they're defined using the lambda keyword
# lambda num(arg) : num * 2 (expression)
# they only take an expression and not a statement, this is important because an expression returns a value and a statement does not
# lambda has to return a value
lambda num : num * 2
lambda a, b : a * b
# you can assign a lambda function to a variable
multiply = lambda a, b : a * b
print(multiply(2, 4))

## Map, Filter, Reduce
# python provides three useful global function that we can use with collections
# map():
# map is used to run a function upon each item in an iterable item, like a list
# meaning you can run a function on every item in a list
# and create a new list with the same number of items but the values of each items can be changed
number = [1, 2, 3]

def double(a):
    return a * 2

result = map(double, numbers)
print (result) #this will give it a map object id
print(list(result))
# whenever you wanna run a function on each item in a list, you use map
# this example doubles all the values from the first list and returns
# [2,4,6]

# same functionality but with a lambda function instead of a regular funcion
number = [1, 2, 3]

double = lambda a : a * 2

result = map(double, numbers)
print(list(result))
# notice how this is much shorter and you pass the parameter directly instead of within the parenthesis
# YOU CAN MAKE IT EVEN MORE SIMPLE
number = [1,2,3]
result = map(lambda a : a * 2, numbers)
print(list(result))

## Filter
# filter takes an iterable and returns a filter object, which is another iterable but without some of the original items
# you can do so by returning true or false from the filtering function
numbers = [1,2,3,4,5,6]

def isEven(n):
    return n % 2 == 0

result = filter(isEven, numbers)
print(list(result))
# shorter version with lambda
numbers = [1,2,3,4,5,6]

result = filter(lambda n : n % 2 == 0, numbers)
print(list(result))

## Reduce
# is used to calculate a value out of a sequence, like a list
# example of list of expenses stored as tuples:
# long way without reduce
expenses = [
    ('Dinner', 80),
    ('Car repair', 120)
]

sum = 0
for expense in expenses:
    sum += expense[1]
print(sum)
#
from functools import reduce
expenses = [
    ('Dinner', 80),
    ('Car repair', 120)
]
sum = reduce(lambda a, b : a[1] + b[2], expenses)
print(sum)

## Recursion
# a function in python can call itself
# a common way to explain recursion is using the factorial calculation
3! = 3 * 2 * 1 = 6
4! = 4 * 3 * 2 * 1 = 24
5! = 5 * 4 * 3 * 2 * 1 = 120
# recursion method
def factorial (n):
    if n == 1: return 1 #this is the base case, recursion always needs to have a way of leaving the recursive function
    return n * factorial(n-1) #recursive case, 
print(factorial(3))
print(factorial(4))
print(factorial(5))

## Decorators
# they are a way to change, enhance or alter in any way how a function works. 
# Decorators are defined with the @ symbol followed by the decorator name jsut before the function definition
# whenever we call the hello the the decorator will be called. a decorator is a function that takes a function as a parameter
# wraps the function in an inner function that preforms the job that it has to do and returns the inner function
def logtime(func):
    def wrapper():
       print("before") 
        val = func()
       print("after") 
       
        return val
    return wrapper
@logtime
def hello():
    print('hello')
hello()
# decorators are typically used when you want do modify the behaviour of a function but you do not want to
# change the function itself
# good examples are when you want to do logging, test performance, perform caching and verify permissions
# You can also use decorators when you need to run the same code on multiple functions

## Docstrings
# it's good practice to use because if you leave a project for a month, you won't remember everything
# when you pick it back up. commenting or using docstrings also makes it easier for other people to
# read the code
# the utility of a docstring is that they follow conventions.
# doctrings are written with three quotation marks """
# it's also good practice to put docstrings at the beginning of the file
"""Dog module

This module does ... bla bla bla and provides
the following classes:

- Dog
...
"""

def increment(n):
    """Increment a number"""
    return n +1

class Dog:
    """A class representing a dog"""
    def __init__(self, name, age):
        """initialize a new dog"""
        self.name = name
        self.age = age

    def bark(self)
        """Let the dog bark!"""
        print("Woof!")
# you can then use the help function to get more information about the thing you just created
print(help(Dog))

## Annotations
# python is dynamically typed, we do not have to specify the type of a variable or function paramater or a function return value
# annotations allow us to optionally do that, if we want to show what type we're expecting for different values
# example
def increment(n: int) -> int:
    return n + 1

count: int = 0 
# python will ignore the annotations, they can be useful for making the program run as expected and catch bugs early,
# especially when your project grows larger

## Exceptions
# it's important to have a way to handle errors, and python gives us exception handling to do so
# you wrap code inside a try: block and inside this block you will put the lines of code and then if an error occurs
# you can determine what kind of error occured using an except block
try: 
    # some lines of code
except <ERROR1>:
    # handler <ERROR1>
except <ERROR2>:
    # handler <ERROR2>
except: #you can put it at the end and catch all exceptions
# you can also use an else: at the end 
# that will run if no exceptions are found
else:
    # no exceptions were raised, the code ran successfully
finally: 
    # do something in any case
# a real example would look like this
try:
    result = 2/0
except ZeroDivisionError:
    print("Cannot divide by 0")
finally:
    result = 1
print(result) #1
# you can raise an exception intentionally
try:
    raise Exception("An error!")
except Exception as error:
    print(error)
# you can also define your own exception class extending from exception
class
    DogNotFoundException(Exception):
        print("inside") # can write stuff inside aswell
        pass #pass here means nothing, and we must use it when we define a class without method, or a function without code
try:
    raise DogNotFoundException()
except DogNotFoundException:
    print("Dog not found!")

# the with statement is very helpful to simply working with exception handling, for example when working with files
# each time we open a file we must remember to close it, with makes the process more transparent
# example without the with statement
filename = '/Users/flavio/test.txt'
try:
    file = open(filename, 'r')
    content = file.read()
    print(content)
finally:
    file.close()
# same example with the with function
filename = '/Users/flavio/test.txt'
with open(filename, 'r') as file:
    content = file.read()
    print(content)
# it's going to make sure to automatically close the file at the end.
# we have built in explicit exception handling as close will be automatically handled for us
# with can do a lot more stuff aswell. this example is just meant to showcase it's capabilities

## third party packages pip
# developers create open source packages for the community because the python standard library doesn't satisfy everything
# you can find shit at pypi.org
# they can be installed on the system using pip
# there's over 270 000 packages
# requests is a HTTP library
# packages are installed globally
pip install requests
# to update a package
pip install -U requests
# uninstall
pip uninstall requests
# info
pip show requests


## Lists
# lists are used in python to store multiple items in a single variable
# lists are surrounded by brackets and each item is separated by a comma
food = ["carrots", "pizza", "eggs"]
dinner = random.choice(food)
# here you can see that the dinner variable is getting a random item with the random.choice
# and it is choosing from the food variable

# you are able to group together multiple values and represent them with a common name
dogs = ["Roger", "Syd"]
# you can mix different datatypes in a single list
dogs2 = ["Roger", 1, "Syd", True, 3.14]
# you can then check if a value is contained within a list with the in value
print("Roger" in dogs2)
# you can reference items in a list by their indexes, starting with 0
print(dogs2[0])
# You can use this to update the list with a new item
# this would update the third line "Syd" to be "Beau"
dogs2 = ["Roger", 1, "Syd", True, 3.14]
dogs2[2] = "Beau"
print(dogs2)
# you can slice the print with
print(dogs2[2:4])
# you can check the length with len
print(len(dogs2))
# this will append an item to the list (.append(...))
dogs2.append("Judah")
# you can extend a list with .extend everything within the [] gets added at the end of the list.
# a better way is to use the += operator
dogs2.extend(["Judah", 5])
dogs2 += ["Judah", 5]
# you can remove an item with .remove
dog2.remove ("Roger")
# you can remove and return a single item with .pop
print(dogs2.pop())
print(dogs2)

# insert new item in a list with the .insert modifier
list = ["hamburger", "bacon"]
list.insert(2, "test")
print(items)
# to add multiple items at a specific index you need to use slices
items[1:1] = ["Test1", "Test2"]
print(items)
# to sort items you can use .sort (it has to be only strings for example, you can't mix strings with intigers when sorting)
items.sort()
print(items)
# sort will sort uppercase letters first and then lowercase, so if you have "Bob", "Ariel", "beau"
# it will sort it as "Ariel", "Bob", "beau"
# you can circumvent this by using a key when sorting, for example (key=str.lower)
items =["Roger", "Bob", "ariel", "Quincy"]
items.sort(key=str.lower)
print(items)
# sorting modifies the original list content
# to avoid that you can copy the list and an empty slice, so it starts at the beginning and ends at the end (to copy the whole thing)
itemscopy = items[:]
# there is also a way of sorting a list without modifiing the original list: the global function called sorted
print(sorted(items, key=str.lower))

## List compressions
# a more advanced way of using lists
# so a list compressions are a way to create lists in a very concise way, so suppose you have a list like this
numbers = [1,2,3,4,5]
# we can create a new list using list compression composed by the numbers list elements to the power of two
numbers_power_2 = [n**2 for n in numbers]
# this is the list compression syntax

print(numbers_power_2)
# list compression are a syntax that sometimes preferred over loops, as more readable when the operation
# can be written on a single line, for instance this is how you would do it with a loop
# what we could do in a single line in example above, this needs a couple of lines in the loop format
for n in numbers:
    numbers_power_2.append(n**2)

numbers_power_2 = list(map(lambda n : n**2, numbers))

## Polymorphism
# generalizes a functionality so we can work on different types, it's an important concep
# in object oriented programming
# in here we defined the same method on different classes
# the dog has eat and the cat also has an eat method
# then we can generate objects and we can call the eat method regardless of the class the object belongs to
# and get different results

class Dog:
    def eat(self)
        print("Eating dog food")

class Cat:
    def eat(self)
        print("Eating cat food")

animal1 = Dog()
animal2 = Cat()

animal1.eat()
animal2.eat()

## Operator overloading
# is an advanced technique to make classes comparable and to make them work with python operators
# Let's take this Dog class and you can create a Dog with name and age, then we will create two dog objects
# we pass the names and ages. We can use operator overloading to add a custom way to compare these two objects
# based on the age property, how could you compare the two dogs. Well we can make it possible with
# operator overloading. The function __gt__ is going to compare things to figure out which is greater than the other
# the __gt__ means greater than
# I guess __lt__ would be lesser than
class Dog:
    # The Dog class
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def __gt__(self, other):
        return True if self.age > other.age else False

roger = Dog("Roger", 8)
syd = Dog("Syd", 8)

print(roger>syd)
# list of different methods to go with different arithmetic operators
__add__() respond to the + operator
__sub__() respond to the - operator
__mul__() respond to the * operator
__truediv__() respond to the / operator
__floordiv__() respond to the // operator
__mod__() respond to the % operator
__pow__() respond to the ** operator
__rshift__() respond to the >> operator
__lshift__() respond to the << operator
__and__() respond to the & operator
__or__() respond to the | operator
__xor__() respond to the ^ operator

## Tuples
# tuples are a fundamental python data structure
# they allow you to create immutable groups of objects, once it's created it can't be modified
# they are created in a similar way to list but using parenthesis instead of using square brackets
names = ("Roger", "Syd")
names [0]
names.index("Roger")
# same thing here, you can use len and "in" to count the length
len(names)
print("Roger" in names)
# the real differene with tuples is when you try sorting items like before, in lists, it won't modify the actual list
print(sorted(names))
# you can combine two tuples with the + operation,
newTuple = names + ("tina", "brown")

## If statement
# the if statement will first check if the condition is true
# and return all the code under the if statement if it is true (assuming that they are indented the same amount)
a = 3
b = 5
    if a == b:
        print ("yes")
        
## Else statement
# the else statement returns the other value if the if statement is not true
        a = true
        b = false
            if a == true:
                print("true")
            else:
                print(b)
## Elif
# the elif statement combines the if statement and the else statement
# you need to put a condition for it to work. Basically it checks if and
# then the elif and then the else as the last one if none of the above are true
        if a == true:
            print(a)
        elif a>b:
            print(b)
        else:
            print("hello") 
# You can nest if statements within elif statements aswell 
if a > b:
    elif a == b:
        if b == 2
            return = b

# IMPORTANT, never put just one equal, that is used for naming variables
# always use two if a == b

## Concatenate
print ("You chose" + a)
# F-string will let you do the same thing but on one line
print (f"Jim is {age} old.")

## Data types
# "string" - string (str) 
# 12 - intiger (int)
# 3.14 - float (float)
# NOTE: floats are written with dot and not comma
name = "pat"
print (type(name)) == str)
# You can check what type the variable by writing type, like in the example above
# with the isinstance type you can check if there is an instance of string in the variable name
print (isinstance(name, str)
# you can convert a string to an intiger if it only contains numbers
a = int("20")
# python does it's best to convert whenever it can but it can't convert str with text
# another variant
number = "20"
age = int(number)
print (isinstance(age, int)) 

# number data types
# only whole numbers
int = intiger
# decimal numbers
float = float
# complex numbers
# are expressed as a sum of a real part and an imaginary part
# imaginary numbers are real multiples of the imaginary unit which is the square root of (-1)
# often written as i in mathematics and j in engineering. In python imaginary numbers are written with a j suffix
complex = 2+3j
# complex constructor
num = complex(2,3)
print (num.real, num.imag)

## Arithmetic operators
1+1     #2
2-1     #1
2*2     #4
4/2     #2
4%3     #1  (remainder)
4**2    #16 (exponent)
4//2    #2  (floor division, rounds down)
# all of the arithmetic operators can be combined with
# the assign operator =
age = 8
age += 8
print (age)
# age = age +8
## Comparison operators
a = 1
b = 2

a == b  #False
a != b  #True
a >  b  #False
a <=  b #True

## Boolean
# An easy way to check if a thing is considered boolean true or false
done = ""
    if done = true
        print("yes")
    else:
        print("no")
# intiger 0 is always false, all the other intigers are true in boolean perspective
# strings are only false if empty like in the example above
# lists, tuples and sets are only False if they are empty

# Boolean operators
condition1 = True
condition 2 = False

not condition1 #False
condition1 and condition2 #False
condition1 or condition2 #True
# pretty self explanatory
# 'or' returns the first value that is not false
print(0 or 1)       #1
print(False or hey) #hey
print('hi' or 'hey')#'hi'
print([] or False)  #False
print(False or [])  #'[]'
# the '[]' is considered a false value
# any value
book_1_read = True
book_2_read = False

read_any_book = any([book_1_read, book_2_read])
# this will return true if one of the books have been read
# all value
ingredients_purchased = True
meal_cooked = False
ready_to_server = all([ingredients_purchased, meal_cooked]))
# this will print true if all the conditions are true
# in this case it is not because the meal has not been cooked yet

## Bitwise operators
& preforms binary AND
| preforms binary OR
^ preforms binary XOR operation
~ preforms binary NOT
<< shift left operation
>> shift right operation
is 
in
# the is is called the identity operator, it's used to compare two objects and returns true if both are the same object
# in is called membership operator, this is used to tell if a value is contained in a list or another sequence

## Ternary operator
# THE SLOW WAY
def is_adult(age):
    if age > 18:
        return True
    else:
        return False
# THE QUICK WAY
def is_adult2(age):
    return True if age > 18 else False

## Strings
# strings can be defined with "" or ''
"Beau"
'Beau'
name = 'Beau'
phrase = 'Beau' + ' is my name'
# you can concatenate strings with the arithmetic operator
# instead of writing the phrase operator you can do 
name = 'Beau'
name += ' is my name'
print (name)

# you can convert the value of a variable using the str prefix
age = str(39)
# strings can be multiline when defined with three quotation marks
print("""Hello
my name
is 
Beau""")

# string methods
# list of different methods

# to print a string in uppercase letters
print("beau".upper())
# to print a string in lowercase letters
print("beau".lower())
# to print a string as a title
print("beau".title())
# to check if a string is lowercase letters
print("beau".islower())
# to check if a string is uppercase letters
print("beau".isupper())
# to check if a string contains only characters and is not empty
isalpha()
# check if a string contains characters and digits and is not empty
isalnum()
# check if a string contains digits and is not empty
isdecimal()
# check if a string starts with a specific substring
startswith()
# check if a string ends with a specific substring
endswith()
# replace part of a string
replace()
# trim the whitespaces from a string
strip()
# append new letters to a string
join()
# find the position of a substring
find()

# all off these modifiers returns a new modified string! it does not change the variable
name = "Beau"
print(name.lower())
print(name)

# global modifier
# len modifier shows the length of a string
print(len(name))

# in modifier 
print("au" in name)
# this will check if "au" is in the variable name which in this case is set to "Beau"
# returns boolean value

## Escaping characters
# is a special way to add special characters to a string
# the \ makes it so the next character in a string does not mean what it usually means
print("be\"au")
# this would not break the string and instead print be"au
# if you want to make a string with quotation marks in it, you can do 'be""au' to circumvent the problem
# special formatting characters like
\n
# will print a string on a new line

## String characters and Slicing
# In order to print a letter from a string
name = "beau"
print(name[3])
# this will print the 4th character (starting from 0)
# you can do the same thing from the end with a negative number
# then it will start counting from -1 beacause there is no negative 0
print(name[-1])

# you can specify ranges with a :
print(name[0:1])
# will print "b"
[0:2]
# will print "be"
# it it count to the last last number but does not include it,

# you can do blank in the first position [:7] and it will start from the beginning and go to 7 but not include 7
# [5:] will start from the 6th character and print the rest

## Enums
# enums are readable names that are bound to a constant value
from enum import Enum

# then you can initialize an Enum in this way, the "State" can be anything you want
# basically you are setting a string to equal a constant
class State (Enum):
    INACTIVE = 0
    ACTIVE = 1
# this will print "State.ACTIVE"
print(state.ACTIVE)
# to print the value of the enum state
print(state.ACTIVE.value)
# if you want return the statement of the value, the value can be reached by the number assigned in the enum
print(State(1))
print(State["ACTIVE"])
# Some people use enums to create a constant, and then nobody can reassign the value
print(State['ACTIVE'].value)
# You can print all the values from the enum
print(list(State))
# Count them with the len function
print(len(State))

## Sets
# sets work like tuples but they're not ordered and they're mutable. They work like dictionaries but they don't have keys
# there's an immutable version of a set that's called a frozen set.
# you can create an intersection where the two sets intersect, in this case "Roger"
set1 = {"Roger", "Syd"}
set2 = {"Roger"}
intersect = set1 & set2
print(intersect)
# you can create a union of a set, this will combine the two sets, which in this case is just "Roger" and "Syd"
set1 = {"Roger", "Syd"}
set2 = {"Roger"}
mod = set1 | set2
print(mod)
# difference, use the - symbol. This will only print unique items
set1 = {"Roger", "Syd"}
set2 = {"Roger"}
mod = set1 - set2
print(mod)
# check if a set is a superset of another or if it is a subset of another
mod = set1 > set2
mod = set1 < set2
# you can count it with the len funcion
# get a list from the items in a set by passing the set to the list constructor (what the fuck)
print(list(set1))
