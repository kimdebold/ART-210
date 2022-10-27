int count = 0;
Sprite s;
void setup()
{
  size(1200,600);
  s = new Zombie(50,150,120,200);
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(new Animation(files));
  String[] files1 = {"zombie1a.svg","zombie2a.svg"};
  s.addAnimation(new Animation(files1));
  String[] files = {"zombieup.svg"};
  s.addAnimation(new Animation(files2));
  String[] files1 = {"zombiefall1.svg","zombiefall2.svg"};
  s.addAnimation(new Animation(files3));
  
  
  s.currentAni=0;
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}

void keyPressed()
{
  s.jump();
}
