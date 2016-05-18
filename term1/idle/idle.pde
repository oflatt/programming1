//Oliver Flatt

//k is the next key that needs to be hit
int hits, k;
int h, w;
ArrayList<char> practiceKeys = new ArrayList<char>();

void setup()
{
  
  k = 'j';
  h = displayHeight-100;
  w = displayWidth-100;
  size(w, h);
  background(0);
  textSize(32);
  hits = 5;
}

void draw()
{
  fill (255);
  background(0); 
  drawText();
  ellipse(w/2, h/2, hits, hits);
}

void drawText()
{
  
}

void keyPressed()
{
  if ((key == 'f') && (key == k))
  {
    hits += 1;
    k = 'j';
  }
  if ((key == 'j') && (key == k))
  {
    hits += 1;
    k = 'f';
  }
}

