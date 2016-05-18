void setup()
{
  println(minusOne(20));
  println(numCounter(20));
  println(converToPercent(221));
}

void draw()
{
}

float converToPercent(int x)
{
  float n = x;
  return n/100;
}

int minusOne(int n)
{
  return n-1;
}

int numCounter(int n)
{
  return n+1;
}

boolean isPositive(int x)
{
  if (x < 0)
  {
    return false;
  } else
  {
    return true;
  }
}