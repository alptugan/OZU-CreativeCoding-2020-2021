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
  
  // Set the x and y variables initial positions
  // we set the starting point of the movement by assigning the following values
  // (todo: change the x and y values and see what's changing...)
  x = width / 2;
  y = height / 2;
}


void draw() {
  
  stroke(0);
  
  x = x + random(-1,1);
  y = y + random(-1,1);
  
  point(x, y);
}
