//Oliver Flatt
//Car

class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float size;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempSize) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    size = tempSize;
  }

  void display() {
    stroke(0);
    fill(c);
    int i=0;
    while (i<5)
    {
      rect(xpos+(i*size*5), ypos, 10*size, 10*size, 5, 5, 5, 5);
      i++;
    }
    triangle(xpos+(30*size), ypos, xpos+(30*size), ypos+(10*size), xpos+(40*size), ypos+(5*size));
    triangle(xpos, ypos, xpos, ypos+(10*size), xpos-(10*size), ypos+(5*size));
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width+100||xpos<-300) {
      c=randomColorGhost();
      int i=int(random(3));
      if (i==1)
      {
        xpos=width+99;
      } else
      {
        xpos=-299;
      }
      ypos=random(10, height-10);
      xspeed=random(-5, 5);
      size=random(1, 4);
    }
  }
}