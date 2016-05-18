//Oliver Flatt
//History of the computer

int y1, y2, y3, y4, y5, y6, y7, y8;
int state;
PImage eniacPic, ferrantiPic, atlasPic;

void setup()
{
  y1 = 100;
  y2 = 200;
  y3 = 300;
  y4 = 400;
  y5 = 500;
  y6 = 600;
  y7 = 700;
  y8 = 800;
  eniacPic = loadImage("ENIAC.jpg");
  ferrantiPic = loadImage("ferranti.jpg");
  atlasPic = loadImage("atlas.jpg");
  state = 0;
  stroke(255);
  size(900, 900);
}

void draw()
{
  if (state == 0)
  {
    background(100);
    textSize(30);
    text("Historic Computer Systems", 250, 50);
    histEvent("ENIAC - 1946", y1, "The first general-purpose computer, used to test the feasibility of the hydrogen bomb");
    histEvent("Ferranti Mark 1- 1951", y2, "First commercial computer, had a primitive chess-playing program and music making program");
    histEvent("Atlas Computer - 1962", y3, "First supercomputer, had what many consider the first recognizable os");
    histEvent("Atlas Computer - 1962", y4, "First supercomputer, had what many consider the first recognizable os");
    histEvent("Atlas Computer - 1962", y5, "First supercomputer, had what many consider the first recognizable os");
    histEvent("Atlas Computer - 1962", y6, "First supercomputer, had what many consider the first recognizable os");
    histEvent("Atlas Computer - 1962", y7, "First supercomputer, had what many consider the first recognizable os");
    histEvent("Atlas Computer - 1962", y8, "First supercomputer, had what many consider the first recognizable os");
  } else
  {
    drawOther();
  }
}

void drawOther()
{
  background(100);
  if (state == 1)
  {
    image(eniacPic, 10, 100, 200, 150);
  }
  if (state == 2)
  {
    image(ferrantiPic, 10, 100, 200, 150);
  }
  if (state == 3)
  {
    image(atlasPic, 10, 100, 200, 150);
  }
  textSize(30);
  text("Historic Computer Systems", 250, 50);
  histEvent("Back to menu", y3, "Click to go back to menu");
}

void histEvent(String name, int yPos, String info)
{
  if (mouseY>(yPos - 30) && mouseY<(yPos + 70))
  {
    fill(255, 0, 0);
    rect(0, yPos - 30, 900, 100);
  }
  fill(255);
  textSize(20);
  text(name, 50, yPos);
  line(100, yPos, 150, yPos + 50);
  line(100, yPos + 50, 800, yPos + 50);
  textSize(15);
  text(info, 150, yPos + 49);
}

void mouseClicked()
{
  if (state == 0)
  {
    clicked0();
  } else
  {
    clickedOther();
  }
}

void clicked0()
{
  if (mouseY>(y1 - 30) && mouseY<(y1 + 70))
  {
    state = 1;
  } else if (mouseY>(y2 - 30) && mouseY<(y2 + 70))
  {
    state = 2;
  } else if (mouseY>(y3 - 30) && mouseY<(y3 + 70))
  {
    state = 3;
  }
}

void clickedOther()
{
  if (mouseY>(y3 - 30) && mouseY<(y3 + 70))
  {
    state = 0;
  }
}

