import processing.sound.*;
SoundFile beep;
int count = 0;
Penguin s;
Ground[] g;
int nGround = 0;


void setup()
{
  size(1200,800);
  //fullScreen();
  beep = new SoundFile(this,"beep.wav");
  s = new Penguin(50,150,120,200);
  String[] files = {"penguin_1.svg","penguin_2.svg"};
  s.addAnimation(new Animation(files));
  String[] files1 = {"penguin_down.svg"};
  s.addAnimation(new Animation(files1));
  String[] files2 = {"penguin_up.svg"};
  s.addAnimation(new Animation(files2));
  
  s.currentAni=0;
  
  nGround = ceil(width/1000.0)+1;
  
  String[] files4 = {"Ground.svg"};
  String[] files5 = {"Ground_1.svg"};
  String[] files6 = {"Ground_2.svg"};

  g = new Ground[nGround];
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i] = new Ground(0,0,1000,250);
    g[i].location.x = (-width/2.0)+(i*1000.0);
    g[i].addAnimation(new Animation(files4));
    g[i].addAnimation(new Animation(files5));
    g[i].addAnimation(new Animation(files6));
   
  }
  
  
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }

  s.update();
  s.check();
  s.display();
  
  
}

void keyPressed()
{
  s.jump();
}

boolean collision(Sprite s1, Sprite s2)
{
  PVector loc1 = new PVector(s1.location.x,s1.location.y);
  PVector loc2 = new PVector(s2.location.x,s2.location.y);
  PVector d = loc1.sub(loc2);
  float dist = d.mag();
  float limit = (min(s1.boxx,s1.boxy)/2)+(min(s2.boxx,s2.boxy)/2);
  if(dist < limit) return(true);
  return(false);
}
