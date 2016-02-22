#!/usr/ bin/env
from Food import Food

class Sandwich(Food):
    def __init__(self, numoflayers, meattype):
        self.numoflayers = numoflayers
        self.meattype = meattype