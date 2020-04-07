PImage img;  // Declare a variable of type PImage
int cellsize = 6; // Dimensions of each cell in the grid
int cols;
int rows;   // Number of columns and rows in our system

void setup() {
  // Set the size of the window  same as your loaded image size (width, height) 
  size(736, 1114);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("background1.jpg");
  
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows
}

void draw() {
  background(0);

  loadPixels();
  // Begin loop for columns
  
  for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
     
      pushMatrix();
      translate(x,y);
      fill(c);
      noStroke();
      rectMode(CENTER);
      //rect(0,0,cellsize,cellsize);
      circle(0,0,cellsize);
     
      
      popMatrix();
    }
  }
}
