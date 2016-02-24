#!/usr/ bin/env
#Oliver Flatt, foodinator
#Type stop or exit to get out of the loop

from Vegetable import Vegetable
from Sandwich import Sandwich

isrunning = True

print("welcome to the foodinator!")

def myinput(s):
    i = input(s).lower()
    if i == "exit" or i == "stop":
        global isrunning
        isrunning = False
    if isrunning:
        return i
    else:
        return "0"

def intput(s):
    try:
        i = int(myinput(s))
    except ValueError:
        print("must be a number")
        return intput(s)
    else:
        return i

print("first, one or two questions...")
mouthsize = intput("How many layers of sandwich can you fit in your mouth at any time? ")

def makesandwich():
    s = Sandwich(intput("how many layers? "), myinput("what kind of meat? "))
    s.tastiness = intput("how tasty is the sandwich, on a scale of 1 to 10? ")
    s.weight = intput("how much does the sandwich weigh? ")
    print("The food has a deliciousness concentration of " + str(s.deliciousnessconcentration()))
    s.iseatable(mouthsize)

def makevegetable():
    v = Vegetable(intput("how stringy is the vegetable, on a scale of 1 to 10? "), intput("how soft is the vegetable, on a scale of 1 to 10? "))
    v.tastiness = intput("how tasty is the vegetable, on a scale of one to ten? ")
    v.weight = intput("how much does the vegetable weigh? ")
    print("The food has a deliciousness concentration of " + str(v.deliciousnessconcentration()))
    print("The vegetable has a choking hazard of " + str(v.chokingdanger()))

testv = Vegetable(2, 2)
print(str(testv.chokingdanger()))

while isrunning:
    i = myinput("is the food a sandwich? ")
    if i == "0":
        print("see ya")
    elif i[0] == "y":
        makesandwich()
    else:
        print("it must be a vegetable")
        makevegetable()