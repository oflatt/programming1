class Button {
  // Button location and size
  float x, y, w, h; 
  color c;
  // Is the button on or off?
  boolean on;
  String text;

  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH, color tempC, String temptext) {    
    x  = tempX;   
    y  = tempY;
    w  = tempW;   
    h  = tempH;
    c = tempC;
    text = temptext;
    on = false;  // Button always starts as off
  }

  //function that draws the buttons
  void drawIt()
  {
    stroke(0);
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h)
    {
      fill(255);
    } else
    {
      fill(c);
    }
    textSize(20);
    rect(x, y, w, h, 10, 10, 10, 10);
    fill(0);
    text(text, x+(w/2-(textWidth(text)/2)), y+(h/2-textDescent()));
  }

  //returns the string of the symbol on the button or "not clicked"
  String clicked()
  {
    if (text != "ENTER")
    {
      if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h)
      {
        return text;
      } else
      {
        return "not clicked";
      }
    }else if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h)
    {
      return "enter clicked";
    }else
    {
      return "not clicked";
    }
  }
}