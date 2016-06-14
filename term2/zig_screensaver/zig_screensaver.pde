//Oliver Flatt
int numOfZigs;
Zig[] zigs = new Zig[50];
float randDirX, randDirY;
boolean rainbow = false;
boolean modeSame=false;
String mode;

void setup()
{
  background(0);
  cursor(CROSS);
}

void settings()
{
  fullScreen();
  reset();
}

void randomRandomMode()
{
  if (int(random(0, 2))==1)
  {
    modeSame=false;
    mode=randomMode();
    modeSame=true;
  } else
  {
    modeSame=false;
  }
}

String randomMode()
{
  int r=int(random(0, 4));
  if (modeSame)
  {
    return mode;
  } else
  {
    if (r==1)
    {
      return "original";
    } else if (r==3)
    {
      return "square";
    } else if (r==2)
    {
      return "smooth";
    } else
    {
      return "zig-zag";
    }
  }
}

void draw()
{
  if (frameCount==2000)
  {
    background(0);
    frameCount=0;
    reset();
  }
  int i = 0;
  while (i<numOfZigs)
  {
    zigs[i].drawOne();
    i++;
  }
}

void reset()
{
  randomRandomMode();
  numOfZigs = int(random(1, 30));
  if (int(random(0, 11))==1)
  {
    rainbow=true;
  } else
  {
    rainbow=false;
  }
  int i=0;
  while (i<numOfZigs)
  {
    randomDir(-10, 10, 1);
    zigs[i] = new Zig(random(10, displayWidth-10), 
      random(10, displayHeight-10), 
      randDirX, 
      randDirY, 
      randomMode(), 
      random(0, 4), 
      randomColor());
    i++;
  }
}

void mouseClicked()
{
  exit();
}

void keyPressed()
{
  if(key==' ')
  {
    background(0);
    reset();
  }
}