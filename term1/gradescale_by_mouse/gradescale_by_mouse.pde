//Oliver Flatt
//Starter grading system

float grade = random(0, 101);
int w, h;

void setup()
{
  w = displayWidth-200;
  h = displayHeight-200;
  size(w, h);
  background(255);
  textSize(30);
  fill(0);
  println(w);
}

void draw()
{
  background(255);
  grade = mouseX/16;
  text("Assign letter grade " + findGrade(), 100, 100);
}

String findGrade()
{
  if (grade>=95)
  {
    return "A";
  } else if (grade >= 90)
  {
    return "A-";
  } else if (grade >= 84)
  {
    return "B";
  } else if (grade >= 80)
  {
    return "B-";
  } else if (grade >= 74)
  {
    return "C";
  } else if (grade >= 70)
  {
    return "C-";
  } else if (grade >= 64)
  {
    return "D";
  } else if (grade >= 60)
  {
    return "D-";
  } else
  {
    return "F";
  }
}

