#!/usr/ bin/env
from Vegetable import Vegetable
from Sandwich import Sandwich

isrunning = True

def myinput(s):
    return input(s).lower()

def makesandwich():
    s = Sandwich(myinput("how many layers? "), myinput("what kind of meat? "))
    s.tastiness = input("how tasty is the sandwich? ")
    s.weight = input("how much does the sandwich weigh? ")

def makevegetable():
    v = Vegetable(3, 4)

while isrunning:
    if myinput("is the food a sandwich? ") == "yes":
        makesandwich()
    else:
        print("it must be a vegetable")
        makevegetable()