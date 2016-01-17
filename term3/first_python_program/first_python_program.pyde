wkey = 'w'
Wkey = 'W'
skey = 's'
Skey = 'S'
Akey = 'A'
akey = 'a'
dkey = 'd'
Dkey = 'D'

class Player:
    def __init__(self, xpos, ypos):
        self.ypos = ypos
        self.xpos = xpos #xpos and ypos are the top left corner of the player
    
    def move(self, k):
        if key == skey or k == Skey:
            self.ypos = self.ypos + 5
        elif k == wkey or k == Wkey:
            self.ypos = self.ypos - 5
        elif k == akey or k == Akey:
            self.xpos = self.xpos - 5
        elif k == dkey or k == Dkey:
            self.xpos = self.xpos + 5

    def display(self):
        stroke(0)
        rect(self.xpos, self.ypos, 10, 10)

player = Player(20, 20)

def setup():
    background(250)
    size(500, 500)
    player.display()
    
def draw():
    pass

def keyPressed():
    background(250)
    player.move(key)
    player.display()