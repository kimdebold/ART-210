class Penguin extends Sprite
{
   boolean isJump = false;
  
   Penguin(float xreg, float yreg, float bx, float by)
   {
     super(xreg,yreg,bx,by);
     this.location.x = (-width/2)+100;
     this.location.y = (height/2)-200;
   }
   
   void jump()
   {
     if(!this.isJump)
     {
       this.velocity.y = -22;
       this.acceleration.y = 0.4;
       this.isJump = true;
     }  
   }
   
   void check()
   {
     if(this.location.y > (height/2)-200)
     {
       this.location.y=(height/2)-200;
       this.velocity.y = 0;
       this.acceleration.y = 0;
       this.isJump = false;
     }
     if(this.isJump)
     {
       if(this.velocity.y < 0)
       {
         this.currentAni = 1; //up
       }
       else
       {
         this.currentAni = 2; //down
       }
     }
     else
     {
       this.currentAni = 0; //grounded
     }
   }
}
