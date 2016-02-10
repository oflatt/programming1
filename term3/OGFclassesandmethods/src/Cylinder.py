import math

class Cylinder:
    def __init__(self, r, h):
        self.r = r
        self.h = h

    def volume(self):
        return self.h * math.pi * (self.r ** 2)

    def surfacearea(self):
        a = 2 * self.h * math.pi * self.r
        b = 2 * math.pi * (self.r ** 2)
        return a + b