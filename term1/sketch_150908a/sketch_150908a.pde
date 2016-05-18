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
  wWidth = displayWidth - 100;
  wHeight = displayHeight - 100;
  moving = 't';
  size(wWidth, wHeight);
  //fill(0, 255, 0);
  //ellipse(wWidth/2, wHeight/2, 400, 500);
}

void draw()
{
  if (moving == 't')
  {
    drawx += mouseX - oldx;
    drawy += mouseY - oldy;
  }
  //draw background
  background(255);

  //set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //body
  stroke(0);
  fill(150);
  rect(100 + drawx, 100 + drawy, 20, 100);

  //head
  stroke(0);
  fill(255);
  ellipse(100 + drawx, 70 + drawy, 60, 60);

  //head
  stroke(0);
  fill(255);
  ellipse(100 + drawx, 70 + drawy, 60, 60);

  //eyes
  fill(0);
  ellipse(81 + oldx, 70 + oldy, 16, 32);
  ellipse(119 + oldx, 70 + oldy, 16, 32);

  //legs
  stroke(0);
  line(90 + drawx, 150 + drawy, wWidth/2 - 10, wHeight/2);
  line(110 + drawx, 150 + drawy, wWidth/2 + 10, wHeight/2);
  oldx = mouseX;
  oldy = mouseY;
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

