//Oliver Flatt

//k is how far in the level they are
//l is the level they are on
int hits, k;
int h, w;
int currentstage;
String[] stage = new String[5];
String l;

void setup()
{
  background(0);
  textSize(32);
}

void settings()
{
  currentstage = 0;
  stage[0] = "jfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdjfkdjfkdjdkfkfdjkdfj";
  stage[1] = "lslslslslslslslslslslslslslslslslslslsa;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;lsa;sla;ls;;asl;asll";
  stage[2] = "jfkdls;a jad fks lda fsdf; lafs djas ljks; djlssad ;lkjfdsa lskd;ajf jdkfls a; jfkdl;lksasld";
  l = stage[currentstage];
  k = 0;
  h = displayHeight-100;
  w = displayWidth-100;
  size(w, h);
  hits = 5;
}

void draw()
{
  fill (255);
  background(0);
  drawText();
  stroke(0);
  ellipse(w/2, h/2, hits, hits);
}

void drawText()
{
  if (k == l.length())//if all are typed
  {
    fill(0, 255, 0);
    text(l, 100, 100);
  } else
  {
    fill(255);
    text(l, 100, 100);
    fill(0, 255, 0);
    text(l.substring(0, k), 100, 100);//typed letters on top of white text
    //text(l.substring(k), textWidth(l.substring(0, k)) + 100, 100);
  }
  fill(0, 0, 255);
  text("stage " + (currentstage+1), 50, 50);
  stroke(0, 255, 255);
  line(100+textWidth(l.substring(0, k)), 100-textAscent(), 100+textWidth(l.substring(0, k)), 100+textDescent());
}

void keyPressed()
{
  if (key == l.charAt(k))
  {
    k += 1;
    hits += 1;
  }
  if (k==l.length())
  {
    k=0;
    currentstage++;
    l=stage[currentstage];
  }
}