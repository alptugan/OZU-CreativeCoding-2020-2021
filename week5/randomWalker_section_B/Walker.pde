class Walker {
  // Variables
  int x;
  int y;
  int xp;
  int yp;
  int stepFactor;
  color curCl;

  Walker(int xpos, int ypos) {
    stepFactor = 10;

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
    int choice = int(random(4));

    xp = x;
    yp = y;

    if (choice == 0) {
      x = x + stepFactor;
      //curCl = color(255, 0, 0);
      //stepFactor = int(random(1, 5));
    } else if (choice == 1) {
      x = x - stepFactor;
      //curCl = color(255, 0, 0);
      //stepFactor = int(random(1, 5));
    } else if (choice == 2) {
      y = y + stepFactor;
      //curCl = color(0, 0, 255);
      //stepFactor = int(random(1, 5));
    } else {
      y = y - stepFactor;
      //curCl = color(0, 0, 255);
      //stepFactor = int(random(1, 5));
    }
  }
}
