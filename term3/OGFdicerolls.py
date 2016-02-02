#dice roller by Oliver Flatt
import random

try:
    numofdice = int(input("how many dice? "))
    numofsides = int(input("how many sides do the dice/die have? "))
except ValueError:
    print("Number inputs only pls")
else:
    def makedie():
        d = []
        while numofsides>len(d):
            d.append(len(d)+1)
        return d

    die = makedie()

    for x in range(0,numofdice):
        print("die " + str(x+1) + " rolled " \
              + str(die[random.randint(0, numofsides-1)]))
        numofdice -= 1
