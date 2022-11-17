class Ground extends Sprite
{
  Ground(float xreg, float yreg, float bx, float by)
  {
    super(xreg,yreg,bx,by);
    this.location.y = 0;
    this.velocity.x = -5;
    this.currentAni = 0;
  }
  
  void check()
  {
    if(this.location.x <= -this.boxx-(width/2))
    {
      this.location.x = -(width/2)+(this.boxx*(3-1));
      
    }
  }
}
