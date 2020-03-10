import processing.pdf.*;


Human h1;
// declare Arraylist
ArrayList<Human> humanArr;

int numObjects;
int maxDist;

boolean isRecordEnabled;


void setup() {
  // Set window position on screen
  surface.setLocation(680, 0);

  numObjects = 30;

  maxDist = 160;

  size(600, 600);

  // Instantiate ArrayList
  humanArr = new ArrayList<Human>();


  // String _name, float _x, float _y, color _gender, float _age
  for (int i = 0; i < numObjects; i++) {//rgb(231, 76, 60)
    h1 = new Human(str(i), random(width), random(height), color(231, 76, 60), random(3, 20));
    humanArr.add(h1);
  }
  
  isRecordEnabled = false;
}

void draw() {
  background(255);
  
  if(isRecordEnabled == true) {
    beginRecord(PDF, "frame-####.ai"); 
  }
  
  //float mappedMx = map(mouseX, 0, width, 50, 300);
  //maxDist = int(mappedMx);


  for (int i = 0; i < numObjects; i++) {
    for (int j = 0; j < numObjects; j++) {
      if (i != j) {
        float tempDist = dist(humanArr.get(i).x, humanArr.get(i).y, humanArr.get(j).x, humanArr.get(j).y);

        if (tempDist < maxDist) {
          float opacityObj = map(tempDist, 0, maxDist, 255, 50);
          float lineThickness = map(tempDist, 0, maxDist, 3, 1);
          stroke(80, 80, 80, opacityObj);
          strokeWeight(lineThickness);
          line(humanArr.get(i).x, humanArr.get(i).y, humanArr.get(j).x, humanArr.get(j).y);
        }
      }
    }
  }

  // Displays the Human class graphics
  for (int i = 0; i < numObjects; i++) {
    humanArr.get(i).display();
  }
  
  if(isRecordEnabled == true) {
    isRecordEnabled = false;
    endRecord();
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    humanArr.clear();
    for (int i = 0; i < numObjects; i++) {
      h1 = new Human(str(i), random(width), random(height), color(231, 76, 60), random(3, 20));
      humanArr.add(h1);
    }
  }
  
  
  // Save to ai file
  if (key == 's' || key == 'S') {
    isRecordEnabled = true;
  }
  
}
