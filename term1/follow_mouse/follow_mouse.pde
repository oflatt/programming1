//Oliver Flatt
//follow my mouse art

int h, w;
int diameter, rate;

void setup()
{
  w = displayHeight - 100;
  h = displayHeight - 100;
  diameter = 10;
  rate = 10;
  size(w, h);
  background(255);
  frameRate(5);
  textSize(40);
}



void draw()
{
  fill(random(0, 256), random(0, 256), random(0, 256), random(100, 256));
  ellipse(mouseX, mouseY, diameter, diameter);
  fill(0);
  text("Use arrows to control size and w and s to control framerate", 20, 50);
}

void keyPressed()
{
  if (keyCode == UP)
  {
    diameter += 1;
  }
  if (keyCode == DOWN)
  {
    diameter -= 1;
  }
  if (rate < 1)
  {
    if (key == 'w')
    {
      rate = 1;
      frameRate(rate);
    }
  } else
  {
    if (key == 'w')
    {
      rate += 1;
      frameRate(rate);
    }
  }
  if (rate >= 1)
  {
    if (key == 's')
    {
      rate -= 1;
      frameRate(rate);
    }
  } else
  {
    if (key == 's')
    {
      rate *= 1/2;
      frameRate(rate);
    }
  }
}

