//Oliver Flatt
//Etch-a-sketch

//IMPORTANT NOTE: sometimes you have to click the window before the keyboard will register and draw, I don't know why

float x, y;

void setup()
{
  background(0);
  frameRate(70);
  // Set start coords
  x = 0;
  y = 0;
  noStroke();
  fill(255);
  drawName();
}

void settings()
{
  size(displayWidth-200, displayHeight-200);
}

void draw()
{
}

// Algorithm for your first name
void drawName()
{
  moveBoth(80, 80);
  moveBoth(0, 100);
  moveBoth(80, 0);
  moveBoth(0, -100);
  moveBoth(-80, 0);
  moveBoth(80, 0);
  moveBoth(50, 0);
  moveBoth(0, 100);
  moveBoth(80, 0);
  moveBoth(20, -20);
  moveBoth(0, -80);
  moveBoth(0, 80);
}

// Method to draw right line
void moveBoth(float r, float d)
{
  float nx = x + r;//new x and new y
  float ny = y + d;
  float mr = r/80;//move x and move y
  float md = d/80;
  while(x != nx || y != ny) //<>//
  {
    x += mr;
    y += md;
    ellipse(x, y, 5, 5);
  }
}

void keyPressed()
{
  println(key);
  if(key == 'w' || key == 'B')
  {
    moveBoth(0, -5);
  }
  if(key == 'a' || key == 'A')
  {
    moveBoth(-5, 0);
  }
  if(key == 's' || key == 'S')
  {
    moveBoth(0, 5);
  }
  if(key == 'd' || key == 'D')
  {
    moveBoth(5, 0);
  }
}

void mouseClicked()
{
  saveFrame("etch_sketch_######.png");
}