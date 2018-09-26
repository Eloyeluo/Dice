void setup()
  {
      size(800,600);
      noLoop();
  }
  void draw()
  {  
      background(0, 100 , 100);
    for(int y = 1; y <= 5000; y+=30){
      for(int x = 1; x <= 5000; x+=30){
       Die eloy = new Die(x ,y);
       eloy.show();
      }
    }
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
