void randomDir(float low, float heigh, float speed)
{
  float r = random(low, heigh)/speed;
  randDirX = r;
  if (int(random(2))==1)
  {
    randDirY = ((-(abs(low)+abs(heigh)))/speed)-abs(r);
  } else
  {
    randDirY = ((abs(low)+abs(heigh))/speed)-abs(r);
  }
  println(randDirY);
}

void randomDirY(float low, float heigh, float speed)
{
  float r = random(low, heigh)/speed;
  randDirY = r;
  if (int(random(2))==1)
  {
    randDirX = ((-(abs(low)+abs(heigh)))/speed)-abs(r);
  } else
  {
    randDirX = ((abs(low)+abs(heigh))/speed)-abs(r);
  }
}