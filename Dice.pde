int total =0;
void setup()
{
  noLoop();
  size(500,500);

}
void draw()
{
  background(255);
  int i,nI;
  for(i = 50 ; i< 450 ; i=i+100){
    
    for(nI=50 ; nI<400 ; nI = nI + 100){
      Die run = new Die (nI,i);
      stroke(5);
      run.show();
      fill(255);
      noStroke();
      rect(20,460,200,50);
      fill(0);
      text("Sum of dice: " + total,350,480);
      }
   }

}
void mousePressed()
{
  total = 0;
  redraw();
}
class Die
{
  int myX, myY;
  int diceNum;
  Die(int x, int y)
  {
    diceNum =(int)(Math.random()*6+1);
    myX = x;
    myY = y;
    total=diceNum;
  }
  void show()
  {

    fill(255,255,0);
    rect(myX,myY,80,80,20);

    fill(0);

    if(diceNum < 2)
      {
        
        ellipse(myX +40,myY + 40,10,10);
      }
      else if (diceNum < 3) {
        ellipse(myX +60 ,myY+20,10,10);
        ellipse(myX + 20 ,myY +60,10,10);
        
      }
      else if (diceNum < 4) {
        ellipse(myX + 40,myY + 40,10,10);
        ellipse(myX +60 ,myY+20,10,10);
        ellipse(myX + 20 ,myY +60,10,10);
      }
      else if(diceNum < 5){
        ellipse(myX +60,myY +60,10,10);
        ellipse(myX + 20,myY+20,10,10);
        ellipse(myX +60 ,myY+20,10,10);
        ellipse(myX + 20 ,myY +60,10,10);
      }
      else if(diceNum < 6){
        ellipse(myX+40,myY+40,10,10);
        ellipse(myX +60,myY +60,10,10);
        ellipse(myX + 20,myY+20,10,10);
        ellipse(myX +60 ,myY+20,10,10);
        ellipse(myX + 20 ,myY +60,10,10);
      }
      else if(diceNum < 7){
        ellipse(myX +20,myY+40,10,10);
        ellipse(myX +60,myY + 40,10,10);
        ellipse(myX +60,myY +60,10,10);
        ellipse(myX + 20,myY+20,10,10);
        ellipse(myX +60 ,myY+20,10,10);
        ellipse(myX + 20 ,myY +60,10,10);
      }    
  }
}
