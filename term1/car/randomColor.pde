color randomColor()
{
  int r = int(random(-1, 5));
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

color randomColorGhost()
{
  int r = int(random(-1, 5));
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