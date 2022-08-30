/*
This is a
multiline comment
*/

//Declaring global variables
int screenX = 0;
int screenY = 0;
int _angle = 0;

void setup()
{
    println(screenX);
    size(800,600);
    screenX = 800;
    screenY = 600;
    println(screenX);
}

void draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,screenX,screenY);
  drawCircle(_angle);
  _angle = _angle + 1;
  if(_angle > 360) _angle = 0;
  println(_angle);
}
  //fill(color(random(255),random(255),random(255)));
 void drawCircle(int hue_start)
 {
  colorMode(HSB, 360, 100, 100);
  float hue = random(hue_start,hue_start+120);
  float sat = random(100,100);
  float bright = random(100,100);
  color randomColor = color(hue,sat,bright);
  fill(randomColor);
  circle(random(screenX),random(screenY),100);
}
