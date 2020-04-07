void setup() {
  // Set the size of the window (width, height) 
  size(300, 300);

  // Set the location (x,y) of the window on your desktop
  surface.setLocation(0, 0);

  // set background color (red, green, blue)
  background(255, 255, 255);
  
  //noLoop();
  
}

void draw() {
  //background(0);
  // This function is called before you access the pixel array, saying "load the pixels, 
  // I would like to speak with them!"
  loadPixels();  
  
  // Loop through every pixel
  for (int i = 0; i < pixels.length; i++) {
    // Pick a random number, 0 to 255
    float rand = random(255);
    
    // Create a grayscale color based on random number
    color c = color(rand);
    
    // Set pixel at that location to random color
    pixels[i] = c;
  }
  
  // This function is called after you finish with the pixel array saying;
  // "Go ahead and update the pixels, I'm all done!"
  updatePixels();
}
