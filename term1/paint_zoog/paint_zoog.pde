//Oliver Flatt
//random faces

int wWidth, wHeight;
int drawx, drawy;
int oldx, oldy;
int moving;

void setup()
{
  oldx = mouseX;
  oldy = mouseY;
  wWidth = displayWidth - 200;
  wHeight = displayHeight - 200;
  moving = 't';
  size(wWidth, wHeight);
  textSize(40);
  background(255);
  text("Press space... other keys for background", 20, 50);
  frameRate(10);
}

void draw()
{
  if (moving == 't')
  {
    drawx += mouseX - oldx;
    drawy += mouseY - oldy;
  }
  //draw background
  //background(oldx, oldy, 0);
  zoog(-25, -25, 0.5);
  zoog(100, 0, 0.25);
  zoog(-100, 0, 0.25);
  zoog(0, 100, 0.25);
  zoog(0, -100, 0.25);
  zoog(150, 0, 1);
  zoog(-300, 0, 1);
}

void zoog(int x, int  y, float size)
{
  //set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //body
  stroke(0);
  fill(255, 0, 0);
  rect((100 * size) + drawx + x, (100 * size) + drawy + y, 20 * size, 100 * size);

  //head
  stroke(0);
  fill(255);
  ellipse((100 * size) + drawx + x, (70 * size) + drawy + y, 60 * size, 60 * size);

  //legs
  stroke(0);
  line((90 * size) + drawx + x, (150 * size) + drawy + y, wWidth/2 - 10, wHeight/2);
  line((110 * size) + drawx + x, (150 * size) + drawy + y, wWidth/2 + 10, wHeight/2);
  oldx = mouseX;
  oldy = mouseY;

  //sombrero
  stroke(0);
  fill(0);
  ellipse((100 * size) + oldx + x, (30 * size) + oldy + y, 120 * size, 40 * size);
  rect((100 * size) + oldx + x, 0 + oldy + y, 30 * size, 100 * size);

  //eyes
  fill(0, 255, 0);
  ellipse((81 * size) + oldx + x, (70 * size) + oldy + y, 16 * size, 32 * size);
  ellipse((119 * size) + oldx + x, (70 * size) + oldy + y, 16 * size, 32 * size);
}

void keyPressed()
{
  if (key == ' ')
  {
    if (moving == 't')
    {
      moving = 'f';
    } else
    {
      moving = 't';
      oldx = mouseX;
      oldy = mouseY;
    }
  }
  if (key == 'b')
  {
    background(0, 0, 255);
  }
  if (key == 'r')
  {
    background(255, 0, 0);
  }
  if (key == 'g')
  {
    background(0, 255, 0);
  }
}

