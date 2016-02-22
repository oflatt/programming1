#!/usr/ bin/env
class Food():
    weight = 0
    tastiness = 0

    def __init__(self, weight, tastiness):
        self.weight = weight
        self.tastiness = tastiness

    def deliciousnessconcentration(self):
        return self.tastyness / self.weight