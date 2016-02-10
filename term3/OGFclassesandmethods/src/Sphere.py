import math

class Sphere:
    def __init__(self, r):
        self.r = r

    def volume(self):
        return (4/3) * math.pi * (self.r ** 3)

    def surfacearea(self):
        return 4 * math.pi * (self.r ** 2)
