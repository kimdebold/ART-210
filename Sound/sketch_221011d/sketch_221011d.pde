import processing.sound.*;

Amplitude amp;
AudioIn in;

void setup() 
{
  size(800, 600);
  
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}      

void draw() 
{
  background(255);
  circle(width/2,height/2,amp.analyze()*400);
}
