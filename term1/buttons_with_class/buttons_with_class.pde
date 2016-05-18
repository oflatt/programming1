int numOfButtons = 100;
Button[] buttons = new Button[numOfButtons];

void settings()
{
  size(displayWidth-200, displayHeight-200);
  int i = 0;
  // Button btn = new Button(float(i*50), float(i*25), random(50), random(50));
  while (i<numOfButtons)
  {
    buttons[i] = new Button(random(0, width), 
      random(0, height), 
      random(10, 200), 
      random(10, 200), 
      randomColor());
    // buttons[i].drawIt();
    i++;
  }
}

void draw()
{
  int i = 0;
  while (i<numOfButtons)
  {
    buttons[i].drawIt();
    i++;
  }
}

class Button {
  // Button location and size
  float x, y, w, h; 
  color c;
  // Is the button on or off?
  boolean on;  

  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH, color tempC) {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH;
    c = tempC;
    on = false;  // Button always starts as off
  }

  //function that draws the buttons
  void drawIt()
  {
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h)
    {
      fill(c);
    } else
    {
      fill(255);
    }
    rect(x, y, w, h);
  }
}