int testCounter = 0;
boolean quietTests = false;

void testFloat(float e, float t)
{
  testFloat(e, t, Float.toString(testCounter+1));
}

void testFloat(float e, float t, String n)
{
  testCounter++;
  if (e == t)
  {
    if (quietTests == false)
    {
      println("test " + n + " passed");
    }
  } else
  {
    println("test " + n + " failed, got " + e + " expected " + t);
  }
}

void testInt(int e, int t, String n)
{
  testCounter++;
  if (e == t)
  {
    if (quietTests == false)
    {
      println("test " + n + " passed");
    }
  } else
  {
    println("test " + n + " failed, got " + e + " expected " + t);
  }
}

void testStringList(StringList e, StringList t, String n)
{
  testCounter++;
  boolean isEqual = true;
  int i = 0;
  if (e.size() == t.size())//checks whether the values of e and t are equal
  {
    while (i < e.size())
    {
      String es = e.get(i);
      String ts = t.get(i);
      if (es.equals(ts))
      {
        i++;
      } else
      {
        isEqual = false;
        i = e.size();
      }
    }
  } else
  {
    isEqual = false;
  }
  if (isEqual)
  {
    if (quietTests == false)
    {
      println("test " + n + " passed");
    }
  } else
  {
    println("test " + n + " failed, got '" + e + "' expected '" + t + "'");
  }
}

void testString(String e, String t)
{
  testString(e, t, Float.toString(testCounter+1));
}

void testString(String e, String t, String n)
{
  testCounter++;
  if (e.equals(t))
  {
    if (quietTests == false)
    {
      println("test " + n + " passed");
    }
  } else
  {
    println("test " + n + " failed, got '" + e + "' expected '" + t + "'");
  }
}