class Robot {
  float mouthH;
  float x;
  float y;
  float robotHeadW;
  float robotHeadH;


  Robot() {
    mouthH = 30;
    robotHeadW = 160;
    robotHeadH = 170;
    x = 0;
    y = 0;
  }

  void display() {
    //Set the position of the whole head
    
    pushMatrix();
    translate(x, y);
    
    // Draw head
    rectMode(CORNER);
    noStroke();
    fill(255, 255, 255);
    rect(0, 0, 160, 170);

    fill(0, 0, 0);
    // Draw Eyes
    float eyeXPos = robotHeadW/5 * 1 + (robotHeadW/5) / 2;
    float eyeXPos2 = robotHeadW/5 * 3 + (robotHeadW/5) / 2;
    float eyesYPos = robotHeadH / 3;
    ellipse(eyeXPos, eyesYPos, 40, 40);
    ellipse(eyeXPos2, eyesYPos, 40, 40);

    // eye pupils
    fill(255, 255, 255);
    ellipse(eyeXPos, eyesYPos, 10, 10);
    ellipse(eyeXPos2, eyesYPos, 20, 20);

    // Draw Mouth
    rectMode(CENTER);
    fill(0, 0, 0);
    rect((robotHeadW) * 0.5, robotHeadH / 1.4, 64, mouthH);

    popMatrix();
  }
}
