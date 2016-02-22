#!/usr/ bin/env
from Food import Food

class Vegetable(Food):

    def __init__(self, stringyness, softness):
        self.stringyness = stringyness
        self.softness = softness

    def chokingdanger(self):
        self.stringyness + self.softness