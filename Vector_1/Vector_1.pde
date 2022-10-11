float xpos = 100;
float ypos = 100;
float yspeed = 3;
float xspeed = 2;

void setup()
{
  size(800,600);
}

void draw()
{
    background(255);
    circle(xpos,ypos,20);
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if(xpos < 0 || xpos > width)
    {
      xspeed = xspeed*(-1);
    }
    if(ypos < 0 || ypos > height)
    {
      yspeed = yspeed*(-1);
    }
}
