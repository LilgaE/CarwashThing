interface RunnerThing {
  void movebubbles();
  void drawbubbles();
}  
class bubble implements RunnerThing
{
  float startX;
  float startY;
  double angle;

  bubble() {
    startX=900;
    startY=250;
    angle=Math.PI*5/3;
  }
  void movebubbles()
  {
    startX+=Math.sin(angle)*(Math.random()*50);
    startY+=Math.cos(angle)*(Math.random()*50);

    if (startX<=250) {
      startX=900;
      startY=250;
    }
  }
  void drawbubbles() {
    fill(255);
    ellipse(startX, startY, 20, 20);
  }
}
