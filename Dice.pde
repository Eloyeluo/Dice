Die eloy;
Die james;
Die adam;
Die noah;
Die jason;
Die jonas;
Die sinn;
Die michelle;
Die john;
void setup()
  {
      size(800,600);
      noLoop();
    
  }
  void draw()
  {  
    background(10,300,0);
    eloy = new Die(100,100);
    james = new Die(100,150);
    adam = new Die(100,200);
    noah = new Die(100,250);
    jason = new Die(100,300);
    jonas = new Die(100,350);
    sinn = new Die(100,400);
    michelle = new Die(100,450);
    john = new Die(100,500);
    eloy.show();
    james.show();
    adam.show();
    noah.show();
    jason.show();
    jonas.show();
    sinn.show();
    michelle.show();
    john.show();
    int total = eloy.randomInt + james.randomInt + adam.randomInt + noah.randomInt + jason.randomInt + jonas.randomInt + sinn.randomInt + michelle.randomInt + john.randomInt;
    text("The total:", 400 , 75);
    text(total, 400 , 100);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int xPlace, yPlace, randomInt;
      Die(int x, int y) 
      {
          xPlace = x;
          yPlace = y;
          roll();
      }
      void roll()
      {
        randomInt = (int)(Math.random()*6)+1;
      }
      void show()
      { 
        fill(200);
        rect(xPlace, yPlace, 20, 20, 5);
        switch(randomInt)
        {
          case 1: fill(0);
          one();
          break;
          case 2: fill(0);
          two(); 
          break;
          case 3: fill(0);
          three(); 
          break;
          case 4: fill(0);
          four();
          break;
          case 5: fill(0);
          five();
          break;
          case 6: fill(0);
          six();
          break;
        }
      }
    void one()
    {
      ellipse(xPlace + 10, yPlace + 10, 1, 1);
    }
    void two()
    {
      ellipse(xPlace + 5, yPlace + 5, 1 ,1);
      ellipse(xPlace + 15, yPlace + 15, 1, 1);
    }
    void three()
    {
      ellipse(xPlace + 5, yPlace + 15, 1 ,1);
      ellipse(xPlace + 10, yPlace + 10, 1 ,1);
      ellipse(xPlace + 15, yPlace + 5, 1 ,1);
    }
    void four()
    {
     ellipse(xPlace + 5, yPlace + 5, 1 ,1);
     ellipse(xPlace + 5, yPlace + 15, 1 ,1);
     ellipse(xPlace + 15, yPlace + 5, 1 ,1);
     ellipse(xPlace + 15, yPlace + 15, 1 ,1);
    }
    void five()
    {
      ellipse(xPlace + 5, yPlace + 5, 1 ,1);
     ellipse(xPlace + 5, yPlace + 15, 1 ,1);
     ellipse(xPlace + 15, yPlace + 5, 1 ,1);
     ellipse(xPlace + 15, yPlace + 15, 1 ,1);
     ellipse(xPlace + 10, yPlace + 10, 1, 1);
    }
    void six()
    {
    ellipse(xPlace + 5, yPlace + 5, 1 , 1);
    ellipse(xPlace + 5, yPlace + 10, 1 , 1);
    ellipse(xPlace + 5, yPlace + 15, 1 , 1);
    ellipse(xPlace + 15, yPlace + 5, 1 , 1);
    ellipse(xPlace + 15, yPlace + 10, 1 , 1);
    ellipse(xPlace + 15, yPlace + 15, 1 , 1);
    }
  }
