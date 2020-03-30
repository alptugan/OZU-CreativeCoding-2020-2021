// Create instance of the noise class using ArrayList
ArrayList<noiseWalker> walkersArray;

boolean isSaveEnabled;

int numWalkers;

void setup() {
  // Set the size of the window (width, height) 
  size(800, 450);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);

  numWalkers = 40;

  // Create the instance of the walkersArray
  walkersArray = new ArrayList<noiseWalker>();
  
  
  // We populate our walkersArray
  for (int i = 0; i < numWalkers; i++) {
    noiseWalker temp = new noiseWalker();

    walkersArray.add(temp);
  }


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
}


void keyPressed() {

  if (key == 's' || key == 'S') {
    isSaveEnabled = !isSaveEnabled;
  }
}
