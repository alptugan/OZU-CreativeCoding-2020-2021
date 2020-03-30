// Create instance of the noise class using ArrayList
ArrayList<noiseWalker> walkersArray;

boolean isSaveEnabled;

int numWalkers;

int radRoomCircle;

void setup() {
  // Set the size of the window (width, height) 
  size(800, 450);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);

  numWalkers = 6;

  // Create the instance of the walkersArray
  walkersArray = new ArrayList<noiseWalker>();

  // Find the angle of a single pie
  // circle's total angle is 360 degree
  float stepAngle = 360 / numWalkers;
  // We populate our walkersArray
  for (int i = 0; i < numWalkers; i++) {

    float currentAngle = stepAngle * i;
    noiseWalker temp = new noiseWalker(currentAngle);

    walkersArray.add(temp);
  }

  radRoomCircle = 300;
  isSaveEnabled = false;
}

void draw() {  

  // Draw all of the walkerArray instances to canvas/window
  for (int i = 0; i < numWalkers; i++) {
    walkersArray.get(i).drawNoiseWalker();
  }

  if (isSaveEnabled == true) {
    saveFrame("ss-####.jpg");
  }


  // Draw red Circle in the middle of the screen for debugging purposes
  push();
  stroke(255, 0, 0);
  noFill();
  circle(width*0.5, height*0.5, radRoomCircle);
  pop();
}


void keyPressed() {

  if (key == 's' || key == 'S') {
    isSaveEnabled = !isSaveEnabled;
  }

  // Press r to regenerate visual
  if (key == 'r' ) {
    background(255, 255, 255,10);
    for (int i = 0; i < numWalkers; i++) {
      walkersArray.get(i).x = width * 0.5;
      walkersArray.get(i).y = height * 0.5;
    }
  }
}
