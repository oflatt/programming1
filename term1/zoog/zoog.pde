//Oliver Flatt
//random faces

int wWidth, wHeight;
int drawx, drawy;
int oldx, oldy;
int moving;
int zWidth, zHeight;

void setup()
{
  oldx = mouseX;
  oldy = mouseY;
  wWidth = displayWidth - 200;
  wHeight = displayHeight - 200;
  zWidth = 200;
  zHeight = 150;
  moving = 't';
  size(wWidth, wHeight);
}

void draw()
{
  if (moving == 't')
  {
    drawx += mouseX - oldx;
    drawy += mouseY - oldy;
  }
  //draw background
  background(oldx, oldy, 0);
  zoog(0, 0, 1);
  zoog(50, 0, 1/2);
}

void zoog(int x, int  y, int size)
{
  //set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //body
  stroke(0);
  fill(255, 0, 0);
  rect(100 + drawx + x, 100 + drawy + y, 20 * size, 100 * size);

  //head
  stroke(0);
  fill(255);
  ellipse(100 + drawx + x, 70 + drawy + y, 60 * size, 60 * size);

  //legs
  stroke(0);
  line(90 + drawx + x, 150 + drawy + y, wWidth/2 - 10, wHeight/2);
  line(110 + drawx + x, 150 + drawy + y, wWidth/2 + 10, wHeight/2);
  oldx = mouseX;
  oldy = mouseY;

  //sombrero
  stroke(0);
  fill(0);
  ellipse(100 + oldx, 30 + oldy, 120, 40);
  rect( 100 + oldx, 0 + oldy, 30, 100);

  //eyes
  fill(0, 255, 0);
  ellipse(81 + oldx, 70 + oldy, 16, 32);
  ellipse(119 + oldx, 70 + oldy, 16, 32);
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
}

