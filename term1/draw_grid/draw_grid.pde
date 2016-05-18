//Oliver Flatt
//Draw Grid

void setup()
{
  size(1000, 1000);
}

void draw()
{
  drawGrid();
}

void drawGrid()
{
  stroke(0, mouseY%255, mouseX%255);//I am very proud of this LINE OF CODE! modulo is cool
  drawHorizontal(6, mouseY);
  drawVertical(6, mouseX);
}

void drawHorizontal(int n, float s)
{
  line(0, s, 1000, s);
  if (n != 0)
  {
    drawHorizontal(n-1, s+100);
  }
}

void drawVertical(int n, int s)
{
  line(s, 0, s, 1000);
  if (n != 0)
  {
    drawVertical(n-1, s+100);
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    background(255);
  }
}

