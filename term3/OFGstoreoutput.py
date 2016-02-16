#Oliver Flatt
import random

print("Type stop to stop the questions")

isrunning = True

questions = ["What is red? What is red, really? ", \
             "Do sheep like people? Are people the real sheep? ", \
             "Is there anyone talking about you right now? ", \
             "What if we are all aliens playing a video game that wipes your memory on birth? ", \
             "What if global warming is saving the earth from combusting? ", \
             "Is Trump just running to show off his hair? ", \
             "Was the big bang just a fart? ", \
             "How cool are beards compared to mustaches? ", \
             "How many words are mispelled in this program? ", \
             "Will the questions ever end? (only if you tell them not to) "]

f = open("output.txt", "w")

f.write("Answers to the endless questions")

while isrunning:
    q = random.choice(questions)
    i = input(q)
    if i == "stop":
        isrunning = False
    else:
        f.write("\n" + q)
        f.write("\n" + i)

f.close()
