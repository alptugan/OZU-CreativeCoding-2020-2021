class WalkerSlave {
  // Variables
  int x;
  int y;
  int xp;
  int yp;
  int stepFactor;
  color curCl;

  float cF1, cF2, cF3;

  WalkerSlave(int xpos, int ypos) {
    stepFactor = 12;
    
    cF1 = 0.1;
    cF2 = 0.4;
    cF3 = 0.7;
    
    x = xpos;
    y = ypos;

    curCl = color(0, 0, 0);
  }
  
  void display() {
    step();

    //noStroke();
    //fill(curCl);
    //rect(x, y, stepFactor, stepFactor);
    //point(x,y);
    stroke(curCl);
    line(x, y, xp, yp);
  }
  
  void step() {
    float choice = random(0,1);

    xp = x;
    yp = y;

    if(choice < cF1) { // 10% goto right 
      x = x + stepFactor;
    }else if(choice < cF2) { // 40% goto left 
      x = x - stepFactor;
    }else if(choice < cF3) { // 30% goto down 
      y = y + stepFactor;
    }else {
      y = y - stepFactor;   // 20% goto up 
    }
    
    // agent goes off the screen
    if(x < 0) {
      cF1 = 0.3;
      cF2 = 0.33;
      cF3 = 0.63;
      stepFactor = 5;
    }else if(x > width) {
      cF1 = 0.1;
      cF2 = 0.3;
      cF3 = 0.7;
      stepFactor = 10;
    }else if(y < 0) {
      cF1 = 0.3;
      cF2 = 0.33;
      cF3 = 0.9;
      stepFactor = 15;
    }else if(y > height) {
      cF1 = 0.1;
      cF2 = 0.3;
      cF3 = 0.4;
      stepFactor = 20;
    }
  }
  
}
