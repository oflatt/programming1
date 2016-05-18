//Oliver Flatt
//Collision Detection

float xPos = 0.0;
float yPos = 0.0;

//setup runs once
void setup() {
  size(displayWidth, displayHeight);
}

//draw runs until it is blocked or stopped
void draw()
{
  triangle( millis() / 8, yPos, xPos, yPos + 40, xPos + 40, yPos + 40);
}

void keyPressed() {
  if (key == 'd')
  {
    xPos = xPos + 1;
  }
  if (key == 'w')
  {
    yPos = yPos - 1;
  }
  if (key == 's')
  {
    yPos = yPos + 1;
  }
  if (key == 'a')
  {
    xPos = xPos - 1;
  }
}
