from Box import Box
from Sphere import Sphere
from Cylinder import Cylinder

isrunning = True

def makebox():
    b = Box(float(input("width of box ")), float(input("height of box ")), float(input("depth of box ")))
    print("volume is " + str(b.volume()))
    print("surface area is " + str(b.surfacearea()))

def makesphere():
    b = Sphere(float(input("radius of sphere ")))
    print("volume is " + str(b.volume()))
    print("surface area is " + str(b.surfacearea()))

def makecylinder():
    b = Cylinder(float(input("radius of cylinder ")), float(input("height of cylinder ")))
    print("volume is " + str(b.volume()))
    print("surface area is " + str(b.surfacearea()))

while isrunning:
    choice = input("Type box, sphere, or cylinder ").lower()

    if choice == "box":
        makebox()
    elif choice == "exit" or choice == "stop" or choice == "quit":
        isrunning = False
    elif choice == "sphere":
        makesphere()
    elif choice == "cylinder":
        makecylinder()