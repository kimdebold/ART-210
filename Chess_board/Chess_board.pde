float d = 30;
Sq[] mySquare = new Sq[10000];
int nSquare = 0;

void setup()
{
  size(800,600);
  d = width/50;
  for(float x = 0; x < width; x = x + d)
   {
     for(float y = 0; y < height; y = y + d)
     {
       mySquare[nSquare] = new Sq(x,y,d);
       nSquare = nSquare + 1;
     }
   }
  
}

void draw()
{
  for(int i = 0; i < nSquare; i = i +1)
  {
    mySquare[i].show();
   }
}

void mouseClicked()
{
  for(int i = 0; i < nSquare; i = i +1)
  {
    mySquare[i].clicked(mouseX,mouseY);
  }
}
