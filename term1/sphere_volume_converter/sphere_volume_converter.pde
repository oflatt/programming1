//Oliver Flatt
//Volume of a sphere conversion app

float c;
int state;
boolean drag;
float oldX, oldc;
float sen, scale;

void setup()
{
  state = 0;
  c = 50;
  sen = 1;
  scale = 1;
  cursor(CROSS);
  background(0);
  noStroke();
  textSize(20);
  textMode(SHAPE);
}

void settings()
{
  size(displayWidth-200, displayHeight-200, P3D);
}

void draw()
{
  if (drag)
  {
    c = oldc+(((mouseX/10)*sen)-oldX);
  }
  camera(70.0, 35.0, 120.0, width/2, height/2, 100.0, 0.0, 1.0, 0.0);
  lights(); 
  background(0);
  noStroke();
  translate(width/2, height/2, 10);
  sphere(c*scale);
  fill(255);
  translate(0, 0, 0);
  camera();
  text("Radius " + c + " inches", width - width/5, height/10);
  text("Volume " + sphereVolume(c) + " inches cubed", width - width/5, height/10 * 2);
  text("sensitivity " + sen, width - width/5, height/10 * 3);
  text("scale of sphere " + scale, width - width/5, height/10 * 4);
  text("click and drag to change radius", width - width/5, height/10 * 6);
  text("find the red sphere spots!", width - width/5, height/10 * 7);
  text("BY OLIVER FLATT", width - width/5, height/10 * 9);
  textSize(40);
  text("Volume of a Sphere Converter", width/10, height/10);
  textSize(20);
  fill(0, 255, 255);
  rect(width - width/5, height/3 - 10, width/20, height/20);
  rect(width - width/10, height/3- 10, width/20, height/20);
  rect(width - width/5, height/3 + height/10 - 10, width/20, height/20);
  rect(width - width/10, height/3 + height/10 - 10, width/20, height/20);
  fill((mouseX/8)%255, mouseY%255, 0);
}

//radius -> volume
float sphereVolume(float r)
{
  return (r*r*r)*(4.0/3.0)*PI;
}

void mousePressed()
{
  if (hit(width - width/5, height/3))
  {
    sen = sen/2;
  }
  if (hit(width - width/10, height/3))
  {
    sen = sen*2;
  }
  if (hit(width - width/5, height/3 + height/10))
  {
    scale = scale/2;
  }
  if (hit(width - width/10, height/3 + height/10))
  {
    scale = scale*2;
  }
  drag = true;
  oldX = (mouseX/10)*sen;
  oldc = c;
}

boolean hit(float x, float y)
{
  if (mouseX>x && mouseX<x+width/20 && mouseY>y && mouseY<y+height/20)
  {
    return true;
  } else
  {
    return false;
  }
}

void mouseReleased()
{
  drag = false;
}