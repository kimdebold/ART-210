class Planet
{
  float dist = 100;  //a property
  float angle = 0.0; 
  float speed = 1.0;
  float size = 50.0;
  color col = color(255,255,255);
  Planet[] _planet = new Planet[20];
  int nPlanet = 0;
  
  Planet(float _dist)  //a method
  {
    this.dist=_dist;
  }
  
  void makeMoons()
  {
    for(int i = 0; i < this.nPlanet; i = i + 1)
    {
     this.planet[i] = new Planet(random(100,400));
     this.planet[i].speed = random(-2.0,2.0);
     this.planet[i].col = color(random(255),100,100);
     this.planet[i].size = random(10,50);
     
     this.planet[i].nPlanet = floor(random(5));
     this.planet[i].makeMoons();
    }
  }
  
  void show()
  {
    pushMatrix();
      rotate(radians(this.angle));
      translate(this.dist,0);
      noStroke();
      fill(this.col);
      circle(0,0,this.size);
      for(int i = 0; i < this.nPlanet; i = i + 1)
      {
        this.planet[i].show();
      }
    popMatrix();
    this.angle = this.angle + this.speed;
  }
}
