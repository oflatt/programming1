#!/usr/ bin/env
from Food import Food

class Sandwich(Food):
    def __init__(self, numoflayers, meattype):
        self.numoflayers = numoflayers
        self.meattype = meattype

    def iseatable(self, mouthsizeinlayers):
        if mouthsizeinlayers < self.numoflayers:
            print("The sandwich is too big for you to eat ")
        else:
            print("You must eat the sandwich; it is within your power! ")