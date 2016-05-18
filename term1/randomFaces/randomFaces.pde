//Oliver Flatt
//random faces

void setup()
{
  size(200, 200);
  frameRate(5);
}

void draw()
{
  background(255);
  makeFace();
}

void makeFace()
{
  fill(255);
  ellipse(100, 100, random(50, 100), random(50, 100));
  
  fill(0);
  ellipse(random(80, 90), random(70, 100), random(10, 30), random(10, 30));
  ellipse(random(110, 120), random(70, 100), random(10, 30), random(10, 30));
  
}
