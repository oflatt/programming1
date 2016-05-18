//Oliver Flatt
//calculator

int numOfButtons = 20;

color lBlue = color(0, 255, 255);
color green = color(0, 255, 0);

Button[] buttons = new Button[numOfButtons];

Numpair testpair = new Numpair(1);
Numpair testpair2 = new Numpair(testpair, "+", testpair);
Numpair testpair3 = new Numpair(testpair2, "*", testpair2);
Numpair testpair4 = new Numpair(testpair3, "-", testpair2);
Numpair testpair5 = new Numpair(testpair4, "/", testpair3);

StringList inputList = new StringList();
StringList history = new StringList();
Numpair inputNumpair;

void settings()
{
  size(600, 600);//this can be changed without breaking it!
  float o = width/100;
  float w = width/10;
  buttons[6] = new Button(o, 6*w+7*o, w, w, lBlue, "7");
  buttons[7] = new Button(w+2*o, 6*w+7*o, w, w, lBlue, "8");
  buttons[8] = new Button(2*w+3*o, 6*w+7*o, w, w, lBlue, "9");
  buttons[3] = new Button(o, 7*w+8*o, w, w, lBlue, "4");
  buttons[4] = new Button(w+2*o, 7*w+8*o, w, w, lBlue, "5");
  buttons[5] = new Button(2*w+3*o, 7*w+8*o, w, w, lBlue, "6");
  buttons[0] = new Button(o, 8*w+9*o, w, w, lBlue, "1");
  buttons[1] = new Button(w+2*o, 8*w+9*o, w, w, lBlue, "2");
  buttons[2] = new Button(2*w+3*o, 8*w+9*o, w, w, lBlue, "3");
  buttons[14] = new Button(3*w+4*o, 6*w+7*o, w, w+w/2+o/2, lBlue, "0");
  buttons[15] = new Button(3*w+4*o, 7*w+8*o+w/2+o/2, w, w+w/2+o/2, lBlue, ".");

  buttons[9] = new Button(o, 5*w+6*o, w, w, green, "+");
  buttons[10] = new Button(w+2*o, 5*w+6*o, w, w, green, "-");
  buttons[11] = new Button(2*w+3*o, 5*w+6*o, w, w, green, "*");
  buttons[12] = new Button(3*w+4*o, 5*w+6*o, w, w, green, "/");

  buttons[13] = new Button(4*w+5*o, 4*w+5*o, w*5+o*4, 5*w+4*o, color(255, 255, 0), "ENTER");

  buttons[16] = new Button(o, 4*w+5*o, w, w, green, "√");
  buttons[17] = new Button(w+o*2, 4*w+5*o, w, w, green, "^");
  buttons[18] = new Button(w*2+o*3, 4*w+5*o, w, w, green, "PI");
  buttons[19] = new Button(w*3+o*4, 4*w+5*o, w, w, green, "DEL");

  testFloat(0, 0);
  testFloat(performCalc(testpair), 1, "calc 1");
  testFloat(performCalc(testpair2), 2, "calc 2");
  testFloat(performCalc(testpair5), 0.5, "calc 3");
  testString(firstNumber(new StringList("2")), "2", "firstNumber 1");
  testString(firstNumber(new StringList("2", "3", "+")), "23", "firstNumber 2");
  ;

  testStringList(new StringList("2", "3"), new StringList("2", "3"), "tester test1");
  testStringList(simplifiedInputList(new StringList("2", "2", "+")), new StringList("22", "+"), "simplify 1");
  testStringList(simplifiedInputList(new StringList("2", "2", "+", "3", "4", "/", "7"))
    , new StringList("22", "+", "34", "/", "7")
    , "simplify 2");

  //println(parseToInputNumpairHelper(new StringList("2", "+", "23")));//how do I print all the values? I could make my own

  StringList testlist1 = new StringList("0", "*", "1", "+", "2", "*", "3");
  testStringList(beforeListThis(testlist1, "+"), new StringList("0", "*", "1"), "beforeListPlus");
  testStringList(afterListThis(testlist1, "+"), new StringList("2", "*", "3"), "afterListPlus");
}

void draw()
{
  float o = width/100;
  float w = width/10;
  background(0);
  fill(190);
  rect(0, 0, width, 4*o+4*w);
  int i = 0;
  while (i<numOfButtons)
  {
    buttons[i].drawIt();
    i++;
  }
  drawInput();
}

void drawInput()
{
  float o = width/100;
  float w = width/10;
  String s = makeInputString();
  int historyLength = history.size();
  int i = 0;
  while (i<historyLength)
  {
    String thisHistory = history.get(i);
    text(thisHistory, width/2-(textWidth(thisHistory)/2), (4*o+4*w-5)-((historyLength-i)*textAscent()));
    i++;
  }
  text(s, width/2-(textWidth(s)/2), 4*o+4*w-5);
}

String makeInputString()
{
  String s = "";
  int i = 0;
  while (i<inputList.size())
  {
    s += inputList.get(i);
    i++;
  }
  return s;
}

void mousePressed()
{
  int i = 0;
  while (i<numOfButtons)
  {
    String s = buttons[i].clicked();
    inputPressed(s);
    i++;
  }
}

void keyTyped()
{
  println(int(key));
  if (int(key) == 10)
  {
    inputPressed("enter clicked");
  } else
  {
    inputPressed(Character.toString(key));
  }
}

void inputPressed(String s)
{
  if (s == "enter clicked")
  {
    history.append(makeInputString());
    parseToInputNumpair();
    history.append(Float.toString(performCalc(inputNumpair)) + " " + inputNumpair.error);
    inputList = new StringList();
  } else if (s == "DEL")
  {
    if (inputList.size() != 0)
    {
      inputList.remove(inputList.size()-1);
    }
  } else if (s == "")
  {
    println("error: empty string input");
  } else
  {
    if (s != "not clicked")
    {
      println(s);
      inputList.append(s);
    }
  }
}