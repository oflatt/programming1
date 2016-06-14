import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class zig_screensaver extends PApplet {

//Oliver Flatt
int numOfZigs;
Zig[] zigs = new Zig[50];
float randDirX, randDirY;
boolean rainbow = false;
boolean modeSame=false;
String mode;

public void setup()
{
  background(0);
  cursor(CROSS);
}

public void settings()
{
  fullScreen();
  reset();
}

public void randomRandomMode()
{
  if (PApplet.parseInt(random(0, 2))==1)
  {
    modeSame=false;
    mode=randomMode();
    modeSame=true;
  } else
  {
    modeSame=false;
  }
}

public String randomMode()
{
  int r=PApplet.parseInt(random(0, 4));
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

public void draw()
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

public void reset()
{
  randomRandomMode();
  numOfZigs = PApplet.parseInt(random(1, 30));
  if (PApplet.parseInt(random(0, 11))==1)
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

public void mouseClicked()
{
  exit();
}

public void keyPressed()
{
  if(key==' ')
  {
    background(0);
    reset();
  }
}
class Zig
{
  float x, y, speedX, speedY, thickness;
  String type;
  int c;

  Zig(float tempx, float tempy, float tempsX, float tempsY, String temptype, float tempthickness, int tempc)
  {
    x = tempx;
    y = tempy;
    speedX = tempsX;
    speedY = tempsY;
    type = temptype;
    thickness = tempthickness;
    c = tempc;
  }

  public void drawOne()
  {
    float oldx=x;
    float oldy=y;
    if (x>displayWidth-10)
    {
      randomDir(-10, 0, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if (x<10)
    {
      randomDir(0, 10, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if (y>displayHeight-10)
    {
      randomDirY(-10, 0, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if (y<10)
    {
      randomDirY(0, 10, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if(rainbow)
    {
      stroke(randomColor());
    }else
    {
      stroke(c);
    }
    if(type=="zig-zag" && PApplet.parseInt(random(0,10))==1)
    {
      randomDir(-10, 10, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if(type=="smooth")
    {
      if(PApplet.parseInt(random(0, 2))==1)
      {
        speedX+=2;
        speedY-=2;
      }else
      {
        speedY+=2;
        speedX-=2;
      }
    }
    strokeWeight(thickness);
    if(type=="square")
    {
      if(PApplet.parseInt(random(0,2))==1)
      {
        speedX=(random(-10,10));
        speedY=0;
      }else
      {
        speedY=(random(-10,10));
        speedX=0;
      }
    }
    x+=speedX;
    y+=speedY;
    line(x, y, oldx, oldy);
  }
}
public void randomDir(float low, float heigh, float speed)
{
  float r = random(low, heigh)/speed;
  randDirX = r;
  if (PApplet.parseInt(random(2))==1)
  {
    randDirY = ((-(abs(low)+abs(heigh)))/speed)-abs(r);
  } else
  {
    randDirY = ((abs(low)+abs(heigh))/speed)-abs(r);
  }
  println(randDirY);
}

public void randomDirY(float low, float heigh, float speed)
{
  float r = random(low, heigh)/speed;
  randDirY = r;
  if (PApplet.parseInt(random(2))==1)
  {
    randDirX = ((-(abs(low)+abs(heigh)))/speed)-abs(r);
  } else
  {
    randDirX = ((abs(low)+abs(heigh))/speed)-abs(r);
  }
}
public int randomColor()
{
  int r = PApplet.parseInt(random(-1, 5));
  if (r==4)
  {
    return color(255, 0, 0);
  } else if (r==3)
  {
    return color(255, 255, 0);
  } else if (r==2)
  {
    return color(0, 255, 0);
  } else if (r==1)
  {
    return color(255, 0, 255);
  } else if(r==-1)
  {
    return color(240, 100, 0);
  }else
  {
    return color(0, 0, 255);
  }
}

public int randomColorGhost()
{
  int r = PApplet.parseInt(random(-1, 5));
  if (r==4)
  {
    return color(255, 0, 0, random(100, 256));
  } else if (r==3)
  {
    return color(255, 255, 0, random(100, 256));
  } else if (r==2)
  {
    return color(0, 255, 0, random(100, 256));
  } else if (r==1)
  {
    return color(255, 0, 255, random(100, 256));
  } else if(r==-1)
  {
    return color(240, 100, 0, random(100, 256));
  }else
  {
    return color(0, 0, 255, random(100, 256));
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "zig_screensaver" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
