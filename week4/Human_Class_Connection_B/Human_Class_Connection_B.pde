import processing.pdf.*;

Human mySelf;
int numHuman;

boolean record;

// Declare Human ArrayList
ArrayList<Human> humanList;

float lineDrawThreshold;

void setup() {
  size(600, 600);
  numHuman = 50;
  lineDrawThreshold = 150;
  record = false;

  humanList = new ArrayList<Human>();
  initHumanObjects() ;
}

void initHumanObjects() {
  for (int i = 0; i < numHuman; i++) {
    // Human(String _name, float _x, float _y, color _gender, float _age
    mySelf = new Human(str(i), random(width), random(height), color(52, 152, 219), random(8, 28));
    humanList.add(mySelf);
  }
  
}

void draw() {
  background(255);

  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "frame-####.ai");
  }

  // Draw lines

  for (int i = 0; i < numHuman; i++) {
    for (int j = i + 1; j < numHuman; j++) {
      // first point of the current line
      float currentX = humanList.get(j).x;
      float currentY = humanList.get(j).y;

      // end point of the current line
      float nextX = humanList.get(i).x;
      float nextY = humanList.get(i).y;

      // Check the maximum distance 
      float distConnection = dist(currentX, currentY, nextX, nextY);

      if (distConnection <= lineDrawThreshold) {
        float mappedOpacity = map(distConnection, 0, lineDrawThreshold, 255, 0);

        stroke(50, 50, 50, mappedOpacity);
        line(currentX, currentY, nextX, nextY);
      }
    }
  }

  // Draw Human objects
  for (int i = 0; i < numHuman; i++) {
    humanList.get(i).display();
  }

  if (record) {
    endRecord();
    record = false;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    humanList.clear();
    lineDrawThreshold = random(100, 200);
    initHumanObjects();
  } else if (key == 's' || key == 'S') {
    record = true;
  }
}
