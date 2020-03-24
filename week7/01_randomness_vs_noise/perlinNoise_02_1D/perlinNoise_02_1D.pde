// TIME
float t = 0.0;

// Global public variables
float x; // holds the x position values
float y; // holds the y position values


void setup() {
  // Set the size of the window (width, height) 
  size(800, 450);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  
  smooth();
}


void draw() {
  background(255);
  
  // to move the image right to left
  float xoff = t;
  
  // Disable shape fill
  noFill();
  
  // set stroke color
  stroke(0);
  
  // set stroke thickness
  strokeWeight(2);
  
  // Create custom shape using vertices
  beginShape();
  for (int i = 0; i < width; i++) {
    // noise(xoff) values are between 0 and 1. So, we need to map this value to our window height
    y = noise(xoff) * height;
    x = i;
    
    // increase/decrease time value to generate new 1D noise values
    // (todo: change the increment factor to see difference)
    xoff += 0.01;
    vertex(x,y);
  }
  endShape();
  
  // increase/decrease time value to generate new 1D noise values
  // (todo: change the increment factor to see difference)
  t+= 0.01;
}
