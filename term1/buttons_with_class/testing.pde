int testCounter = 0;
boolean quietTests = false;

void testFloat(float e, float t)
{
  testCounter++;
  if (e == t)
  {
    if (quietTests == false)
    {
      println("test " + testCounter + " passed");
    }
  } else
  {
    println("test " + testCounter + " failed, got " + e + " expected " + t);
  }
}