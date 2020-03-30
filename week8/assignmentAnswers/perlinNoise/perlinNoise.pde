noiseWalker walker1; // declare the first variable
noiseWalker walker2; // declare the first variable

boolean isSaveEnabled;

void setup() {
  // Set the size of the window (width, height) 
  size(800, 450);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  
  walker1 = new noiseWalker();
  walker2 = new noiseWalker();
  
  walker1.x = 40;
  walker1.noiseMultX = 50;
  walker1.noiseMultY = 23250;
  
  walker2.x = width - 40;
  walker2.noiseMultX = 250;
  walker2.noiseMultY = 923250;
  
  
  isSaveEnabled = true;
}

void draw() {  
  
  walker1.drawNoiseWalker();
  walker2.drawNoiseWalker();
  
  
  if(isSaveEnabled == true) {
    saveFrame("ss-####.jpg");
  }
}


void keyPressed() {
  
 if(key == 's' || key == 'S') {
   isSaveEnabled = !isSaveEnabled;
 }
}
