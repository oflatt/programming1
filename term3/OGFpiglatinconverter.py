def convertWord(w):
    firstl = w[:1]
    if firstl == "a" or firstl == "e" or firstl == "i" or firstl == "o" or firstl == "u":
        return w[2:] + w[:2] + "ay"
    else:
        return w[1:] + firstl + "ay"

def convertList(l):
    if len(l) == 0:
        return ""
    else:
        return convertWord(l[0]) + " " + convertList(l[1:])

def convertWords(s):
    return convertList(s.split())

while True:
    i = input("convert: ").lower()
    print(convertWords(i))
