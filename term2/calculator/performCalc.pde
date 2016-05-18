float performCalc(Numpair np)
{
  if (np.operator == "just a number")
  {
    return np.number;
  } else if (np.operator == "+")
  {
    return performCalc(np.n1)+performCalc(np.n2);
  } else if (np.operator == "-")
  {
    return performCalc(np.n1)-performCalc(np.n2);
  } else if (np.operator == "/")
  {
    return performCalc(np.n1)/performCalc(np.n2);
  } else if (np.operator == "*")
  {
    return performCalc(np.n1)*performCalc(np.n2);
  } else if (np.operator == "√")
  {
    return sqrt(performCalc(np.n2));
  } else if (np.operator == "^")
  {
    return toThePower(performCalc(np.n1), performCalc(np.n2));
  } else
  {
    return 0.0;
  }
}

float toThePower(float n, float p)
{
  float a = n;
  int i = 0;
  while (i<p)
  {
    a = a*n;
    i++;
  }
  return a;
}

//Serious parser, takes the input list of strings and turns it into a nested numpair, applying order of operations
//Lower Numpairs are evaluated first
void parseToInputNumpair()
{  
  StringList l = simplifiedInputList(inputList);
  inputNumpair = parseToInputNumpairHelper(l);
}

Numpair parseToInputNumpairHelper(StringList l)
{
  int lLength = l.size();
  if (lLength == 0)
  {
    return new Numpair(0);
  } else if (inList(new StringList(l), "+"))
  {
    return new Numpair(parseToInputNumpairHelper(beforeListThis(l, "+")), "+", parseToInputNumpairHelper(afterListThis(l, "+")));
  } else if (inList(new StringList(l), "-"))
  {
    return new Numpair(parseToInputNumpairHelper(beforeListThis(l, "-")), "-", parseToInputNumpairHelper(afterListThis(l, "-")));
  } else
  {
    return parseToInputNumpairSimple(new StringList(l));
  }
}

Numpair parseToInputNumpairSimple(StringList l)
{
  String firstL = l.get(0);
  int lLength = l.size();
  if (lLength == 1)
  {
    return new Numpair(float(firstL));
  } else if (firstL == "√")
  {
    return new Numpair(new Numpair(1), "√", parseToInputNumpairSimple(withoutFirst(l)));
  } else if (!isNumberString(firstL))
  {
    println("syntax-error");
    return new Numpair("error: syntax");
  }else if(l.size() < 3)
  {
    return new Numpair("error: syntax");
  }else if (isNumberString(l.get(1)))
  {
    return new Numpair("error: syntax");
  } else
  {
    return new Numpair(new Numpair(Float.parseFloat(firstL)), l.get(1), parseToInputNumpairSimple(withoutFirst(withoutFirst(l))));
  }
}

StringList afterListThis(StringList l, String s)
{
  if (l.size() == 0)
  {
    return l;
  } else if (l.get(0) == s)
  {
    l.remove(0);
    return new StringList(l);
  } else
  {
    l.remove(0);
    return afterListThis(new StringList(l), s);
  }
}

StringList beforeListThis(StringList l, String s)
{
  if (l.size() == 0)
  {
    return l;
  } else if (l.get(0) == s)
  {
    return new StringList();
  } else
  {
    StringList firstList = new StringList(l.get(0));
    l.remove(0);
    firstList.append(beforeListThis(l, s));
    return firstList;
  }
}

boolean inList(StringList l, String s)
{
  if (l.size() == 0)
  {
    return false;
  } else if (l.get(0) == s)
  {
    return true;
  } else
  {
    l.remove(0);
    return inList(new StringList(l), s);
  }
}

StringList simplifiedInputList(StringList i)//i is the input list
{
  return simplifiedInputListHelper(new StringList(), i);
}

//s is the simplified list accumulator, and o is the old list
StringList simplifiedInputListHelper(StringList s, StringList o)
{
  if (o.size() == 0)
  {
    return s;
  } else
  {
    if (isNumberString(o.get(0)))
    {
      String firsto = firstNumber(new StringList(o));
      s.append(firsto);
      o = withoutFirstNumber(new StringList(o));
      return simplifiedInputListHelper(s, o);
    } else if (o.get(0) == "PI")
    {
      s.append(Float.toString(PI));
      return simplifiedInputListHelper(s, withoutFirst(o));
    } else
    {
      s.append(o.get(0));
      return simplifiedInputListHelper(s, withoutFirst(o));
    }
  }
}

StringList withoutFirst(StringList l)
{
  l.remove(0);
  return new StringList(l);
}

//returns a string off all the number strings at the beginning of l appended
String firstNumber(StringList l)
{
  if (l.size() == 0)
  {
    return "";
  } else
  {
    if (isNumberString(l.get(0)))
    {
      String firstl = l.get(0);
      l.remove(0);
      return firstl + firstNumber(l);
    } else
    {
      return "";
    }
  }
}

//returns a string off all the number strings at the beginning of l appended
StringList withoutFirstNumber(StringList l)
{
  if (l.size() == 0)
  {
    return new StringList();
  } else
  {
    if (isNumberString(l.get(0)))
    {
      l.remove(0);
      return withoutFirstNumber(l);
    } else
    {
      return new StringList(l);
    }
  }
}

boolean isNumberString(String sOld)
{
  String s = sOld.substring(0, 1);
  if (s.equals("0") || s.equals("1") || s.equals("2") || s.equals("3") || s.equals("4") || s.equals("5")
  || s.equals("6") || s.equals("7") || s.equals("8") || s.equals("9") || s.equals("."))
  {
    return true;
  } else
  {
    return false;
  }
}