//Oliver Flatt
//button test

int wWidth, wHeight;
int state;
int exitPosx, exitPosy, exitw, exith;
Button exit = new Button(100, 100, 300, 200);

void setup()
{
  textSize(25);
  state = 0;
  wWidth = displayWidth - 200;
  wHeight = displayHeight - 200;
  size(wWidth, wHeight);
}

void draw()
{
  makeButton("exit", exit.xPos, exit.yPos, exit.w, exit.h);
  makeButton("start", wWidth/2 - 100, wHeight/2 - 50, 200, 100);
  makeButton("credits", wWidth/2 - 200, wHeight/2 + 150, 400, 200);
}

void makeButton(String name, int xPos, int yPos, int w, int h)
{
  fill(255); 
  rect(xPos, yPos, w, h, 6, 6, 6, 6);
  fill(0);
  text(name, xPos + w/2, yPos + h/2);
}

class Button
{
  int xPos, yPos, w, h;
  Button (int x, int y, int wth, int hgh)
  {
    xPos = x;
    yPos = y;
    w = wth;
    h = hgh;
  }
}
