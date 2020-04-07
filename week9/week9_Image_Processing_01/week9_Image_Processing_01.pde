PImage img;  // Declare a variable of type PImage

void setup() {
    // Set the size of the window (width, height) 
  size(736, 1114);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("background1.jpg");
}

void draw() {
  background(0);
  
  // Draw the image to the screen at coordinate (0,0)
  image(img,0,0);
}
