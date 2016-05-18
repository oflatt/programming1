class Zig
{
  float x, y, speedX, speedY, thickness;
  String type;
  color c;

  Zig(float tempx, float tempy, float tempsX, float tempsY, String temptype, float tempthickness, color tempc)
  {
    x = tempx;
    y = tempy;
    speedX = tempsX;
    speedY = tempsY;
    type = temptype;
    thickness = tempthickness;
    c = tempc;
  }

  void drawOne()
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
    if(type=="zig-zag" && int(random(0,10))==1)
    {
      randomDir(-10, 10, 1);
      speedX=randDirX;
      speedY=randDirY;
    }
    if(type=="smooth")
    {
      if(int(random(0, 2))==1)
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
      if(int(random(0,2))==1)
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