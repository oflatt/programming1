//Oliver Flatt

//k is how far in the level they are
//l is the level they are on
int exp, k;
int h, w;
int currentStage;
String[] stage = new String[5];
String l;
int lv;
color lvColor;

void setup()
{
  background(0);
  textSize(32);
  pressDraw();
}

void settings()
{
  lv=0;
  lvColor=randomColor();
  currentStage = 0;
  stage[0] = "jfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfjfkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdkdjfkdjfkdjdkfkfdjkdfj";
  stage[1] = "lslslslslslslslslslslslslslslslslslslsa;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;lsa;sla;ls;;asl;asll";
  stage[2] = "jfkdls;a jad fks lda fsdf; lafs djas ljks; djlssad ;lkjfdsa lskd;ajf jdkfls a; jfkdl;lksasld";
  l = stage[currentStage];
  k = 0;
  h = displayHeight-100;
  w = displayWidth-100;
  size(w, h);
  exp = 0;
}

void draw()
{
}

void pressDraw()
{
  background(0);
  drawText();
  stroke(0);
  fill(lvColor);
  ellipse(w/2, h/2, exp, exp);
  drawBar();
}

void drawBar()
{
  stroke(255);
  fill(0);
  rect(width/15-5, 5, width-(width/10), height/20+10);
  stroke(0);
  fill(lvColor);
  rect(width/15, 10, ((width-(width/10))/((lv+1)*50))*exp, height/20);
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
    fill(lvColor);
    text(l.substring(0, k), 100, 100);//typed letters on top of white text
    //text(l.substring(k), textWidth(l.substring(0, k)) + 100, 100);
  }
  fill(0, 0, 255);
  text("stage " + (currentStage+1), width/20, (height/10)*2);
  stroke(0, 255, 255);
  line(100+textWidth(l.substring(0, k)), 100-textAscent(), 100+textWidth(l.substring(0, k)), 100+textDescent());
  fill(lvColor);
  text("lv " + lv, width/40, height/20);
}

void keyPressed()
{
  if (key == l.charAt(k))
  {
    k += 1;
    exp += 1;
  }
  if (k==l.length())
  {
    k=0;
    currentStage++;
    l=stage[currentStage];
  }
  if (exp>=50*(lv+1))
  {
    exp = 0;
    lv++;
    lvColor=randomColor();
  }
  pressDraw();
}