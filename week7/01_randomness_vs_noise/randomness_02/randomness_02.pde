// Global public variables
float x; // holds the x position values
float y; // holds the y position values

float pX; // holds the previous x position values
float pY; // holds the previous y position values

float randomWalkStepSize;


void setup() {
  // Set the size of the window (width, height) 
  size(800, 450);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  
  // Set the x and y variables initial positions
  // we set the starting point of the movement by assigning the following values
  // (todo: change the x and y values and see what's changing...)
  x = width / 2;
  y = height / 2;
  
  
  // Set the movement amount across the canvas
  randomWalkStepSize = 5;
}


void draw() {
  
  stroke(0);
  
  // Assign previous x & y values to pX & pY variables to create continues line
  pX = x;
  pY = y;
  
  // calculate new x & y values every single frame with random function
  x = x + random(-randomWalkStepSize,randomWalkStepSize);
  y = y + random(-randomWalkStepSize,randomWalkStepSize);
  
  //point(x, y);
  line(pX, pY, x, y);
}
