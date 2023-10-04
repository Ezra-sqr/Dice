Die Biden;
void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
  background(60);
  float total=0;
  for (int k= 25; k<126; k+=50){
  for (int i=25; i<350; i+=50){
  Biden= new Die (i,k);
  Biden.roll();
  Biden.show();
  }
  }
  for (int k= 175; k<500; k+=50){
  for (int i=25; i<500; i+=50){
  Biden= new Die (i,k);
  Biden.roll();
  total+=Biden.diceResult;
  Biden.show();
  }
  }
  fill (0,150,0);
  text("total: "+(int)total, 375, 30);
  text("average: "+(total/91), 375, 80);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY,diceResult;
  
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    diceResult=1;
  }
  void roll()
  {
    diceResult=(int)(Math.random()*6+1);
  }
  void show()
  {
    fill(20);
    rect(myX-15,myY-15,30,30);
    
    if (diceResult==1){
      fill(255,0,0);
      ellipse(myX,myY,5,5);
    }
    else if (diceResult==2){
    fill(250,150,0);
    ellipse(myX+7,myY+7,5,5);
    ellipse(myX-7,myY-7,5,5);
    }
    else if (diceResult==3){
       fill(255,255,0);
      ellipse(myX,myY,5,5);
       ellipse(myX+7,myY+7,5,5);
    ellipse(myX-7,myY-7,5,5);
    }
    else if (diceResult==4){
       fill(0,255,0);
       ellipse(myX+7,myY+7,5,5);
    ellipse(myX-7,myY+7,5,5);
     ellipse(myX+7,myY-7,5,5);
    ellipse(myX-7,myY-7,5,5);
    }
    else if (diceResult==5){
       fill(0,0,235);
    ellipse(myX,myY, 5,5);
     ellipse(myX+7,myY+7,5,5);
    ellipse(myX-7,myY+7,5,5);
     ellipse(myX+7,myY-7,5,5);
    ellipse(myX-7,myY-7,5,5);
    }
    else{
       fill(215,0,255);
     ellipse(myX+7,myY+7,5,5);
    ellipse(myX-7,myY+7,5,5);
     ellipse(myX+7,myY-7,5,5);
    ellipse(myX-7,myY-7,5,5);
     ellipse(myX+7,myY,5,5);
    ellipse(myX-7,myY,5,5);
    }
  }
}
