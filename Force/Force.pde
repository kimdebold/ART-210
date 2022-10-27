int nMover  = 20;
Mover[] m = new Mover[nMover];

void setup()
{
  size(800,600);
  for(int i=0; i<nMover; i=i+1)
  {  
    m[i] = new Mover();
    m[i].mass=random(0.5,3);
  }  
}

void draw()
{
  background(255);
  PVector gravity = new PVector(0,0.3);
  PVector wind = new PVector(0.02,0);
  for(int i=0; i<nMover; i=i+1)
  { 
    m[i].applyForce(gravity);
    m[i].applyForce(wind);
    m[i].update();
    m[i].checkEdges();
    m[i].display();
  }  
}
