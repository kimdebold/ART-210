int nPlanet = 10;
Planet[] _planet = new Planet[100];

void setup()
{
  size(800,600);
  for(int i = 0; i < nPlanet; i = i + 1)
  {
  _planet[i] = new Planet(random(100,400));
  _planet[i].speed = random(-2.0,2.0);
  _planet[i].col = color(random(255),100,100);
  _planet[i].size = random(10,50); 
  _planet[i].nPlanet = floor(random(5));
  _planet[i].makeMoons();
  }
  _planet[0].dist = 0;
  _planet[0].col = color(255,150,0);
  _planet[0].size = 100;
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  for(int i = 0; i < nPlanet; i = i + 1)
  {
   _planet[i].show();
  }
}
