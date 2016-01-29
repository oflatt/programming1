#age calculator by Oliver Flatt
#Tells you in only one measurement, makes it different

import datetime
isrunning = True

def converttoage(l):
    now = datetime.datetime.now()
    if len(l) == 3:
        try:
            iday = int(l[2])
            imonth = int(l[1])
            iyear = int(l[0])
        except ValueError:
            print("Did you put letters instead of numbers? It's not THAT" + \
                  " easy to break, ya know")
        else:
            aday = now.day - iday
            amonth = now.month - imonth
            ayear = now.year - iyear
            aindays = aday + amonth*30 + ayear * 365
            ainmonths = aindays/30
            ainyears = aindays/365
            aindecades = ainyears/10
            aincenturies = ainyears/100
            ainmillenia = ainyears/1000
            print("It was " + str(aindays) + " days ago, or")
            print(str(ainmonths) + " months ago")
            print(str(ainyears) + " years ago")
            print(str(aindecades) + " decades ago")
            print(str(aincenturies) + " centuries ago")
            print(str(ainmillenia) + " millenia ago")
    else:
        print("The input ain't good, try again")

while isrunning:
    i = input('Enter a date in "year month day" format (spaces in between)')
    if i == "exit" or i == "stop" or i == "end":
        isrunning = False
    else:
        l = i.split()
        converttoage(l)

#this is the end of the code. Try putting letters instead
#of numbers for a sassy exeption handler
