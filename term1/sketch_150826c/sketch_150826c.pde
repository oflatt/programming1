//Oliver Flatt
//collision detection
//the formating error was that the second if was too far indented

int xSpeed, ySpeed;
int xPos, yPos, myWidth, myHeight;

int xSpeed2, ySpeed2;
int xPos2, yPos2, myWidth2, myHeight2;

void setup()
{
  size(displayWidth-100, displayHeight-100);
  background(0);
  xSpeed = 10;
  ySpeed = 5;
  myWidth = 5;
  myHeight = 5;
  xSpeed2 = -10;
  ySpeed2 = -5;
  myWidth2 = 5;
  myHeight2 = 5;
  noStroke();
  xPos = width/2;
  yPos = height/2;
  xPos2 = width/2;
  yPos2 = height/2;
  frameRate(70);
}

void draw()
{
  fill(frameCount, xPos, yPos);
  ellipse(xPos, yPos, myWidth, myHeight);
  fill(frameCount, xPos2, yPos);
  ellipse(xPos2, yPos2, myWidth2, myHeight2);
  xPos += xSpeed;
  yPos += ySpeed;
  xPos2 += xSpeed2;
  yPos2 += ySpeed2;
  if (xPos >= width-myWidth/2 || xPos <= myWidth/2)
  {
    xSpeed *= -1;
  }
  if (yPos >= height-myHeight/2 || yPos <= myHeight/2)
  {
    ySpeed = ySpeed * -1;
  }
  if (xPos2 >= width-myWidth2/2 || xPos2 <= myWidth2/2)
  {
    xSpeed2 *= -1;
  }
  if (yPos2 >= height-myHeight2/2 || yPos2 <= myHeight2/2)
  {
    ySpeed2 = ySpeed2 * -1;
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    background(0);
  }
  if (key == 'w')
  {
    myWidth += 1;
    myHeight = myHeight + 1;
  }
  if (key == 's')
  {
    myWidth = myWidth - 1;
    myHeight = myHeight - 1;
  }
  if (keyCode == UP)
  {
    myWidth2 += 1;
    myHeight2 += 1;
  }
  if (keyCode == DOWN)
  {
    myWidth2 -= 1;
    myHeight2 -= 1;
  }
}

