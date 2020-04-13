import peasy.*;

PImage img;  // Declare a variable of type PImage
int cellsize = 6; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

float randomWalkStepSize;

// Declare easy cam variable
PeasyCam cam;

void setup() {
  // Set the size of the window  same as your loaded image size (width, height) 
  size(736, 1114, P3D);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("background1.jpg");

  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows

  randomWalkStepSize = 100;
  
  // Initialize the cam variable
  cam = new PeasyCam(this, 1000);
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(5000);
  cam.reset(); 
}


void draw() {

  background(0);
  
  pushMatrix();
  translate(-width/2, -height/2);
  
  loadPixels();

  // Begin loop for columns
  for ( int i = 0; i < cols; i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows; j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position

      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
      // Calculate a z position as a function of mouseX and pixel brightness

      float z = (mouseX/(float)width) * brightness(img.pixels[loc]) - 70.0;

      // if the color value of the current pixel is white then draw the rectangles else do not nothing
      if (c > color(60, 60, 60)) { 
        // Translate to the location, set fill and stroke, and draw the rect
        pushMatrix();
        translate(x, y, z);
        fill(c);
        noStroke();
        rectMode(CENTER);
        rect(0, 0, cellsize, cellsize);
        popMatrix();
      }
    }
  }
  
  popMatrix();
}
