//Declaring global variables
int screenX = 0;
int screenY = 0;

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
  
  //fill(color(random(255),random(255),random(255)));
  
  colorMode(HSB, 360, 100, 100);
  float hue = random(0,70);
  float sat = random(100,100);
  float bright = random(100,100);
  color randomColor = color(hue,sat,bright);
  fill(randomColor);
  
  circle(random(screenX),random(screenY),100);
}
