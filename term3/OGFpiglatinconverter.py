#Oliver Flatt's Pig Latin Converter!
#works with sentenes
#type quit to exit
isrunning = True

def findvowelspothelper(w, n):
    sw = w[n:]
    firstl = sw[:1]
    if firstl == "a" or firstl == "e" or firstl == "i" or firstl == "o" or firstl == "u":
        return n
    else:
        return findvowelspothelper(w, n+1)

def findvowelspot(w):
    return findvowelspothelper(w, 0)

def convertWord(w):
    firstvowelspot = findvowelspot(w)
    return w[firstvowelspot:] + w[:firstvowelspot] + "ay"

def convertList(l):
    if len(l) == 0:
        return ""
    else:
        return convertWord(l[0]) + " " + convertList(l[1:])

def convertWords(s):
    return convertList(s.split())

while isrunning:
    i = input("convert: ").lower()
    if i == 'quit' or i == 'stop' or i == 'exit':
        isrunning = False
    print(convertWords(i))
