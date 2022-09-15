float angle = 0;

void setup()
{
  size(800,800);
}




void draw()
{
  translate(width/2,height/2);  //clock face
  strokeWeight(15);
  circle(0, 0, 700);
  
  pushMatrix();
    rotate(radians(angle));
    line(0, 0, 230, 230);  //big hand
  popMatrix();
 
  pushMatrix();
    rotate(radians(angle/12));
    line(0, 0, 50, 200);  //short hand
  popMatrix();
  
  pushMatrix();
    rotate(radians(angle*60));
    strokeWeight(10);
    line(0, 0, 50, 200);  //seconds hand
  popMatrix();
  
  circle(0, 0, 20);
  
  angle = angle + 0.1;
}
