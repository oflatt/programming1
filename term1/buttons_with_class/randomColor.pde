color randomColor()
{
  int r = int(random(5));
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
    return color(0, 255, 255);
  } else
  {
    return color(0, 0, 255);
  }
}