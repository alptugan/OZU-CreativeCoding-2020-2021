// Global public variables
float x; // holds the x position values
float y; // holds the y position values

float pX; // holds the previous x position values
float pY; // holds the previous y position values

float randomWalkStepSize;

float noiseMultX;
float noiseMultY;

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
  // (todo: change the following value to see the difference)
  randomWalkStepSize = 5;
  
  // Set the noise feed values
  // the values doesn't matter. But for every single axis the should start counting from different numbers
  // (todo: change the following values see what happens?)
  // (todo: write the same value to both "noiseMultX" and "noiseMultY"? What did happen?)
  noiseMultX = 0;
  noiseMultY = 200;
  
}


void draw() {
  
  // Set the stroke color
  stroke(0);
  
  // set the stroke thickness
  strokeWeight(1);
  
  // Assign previous x & y values to pX & pY variables to create continues line
  pX = x;
  pY = y;
  
  // calculate new x & y values every single frame with noise function
  // In contrast to  "random" function "noise" function needs constantly changing
  // parameters to generate numbers. The amount of change on the input parameter
  // set the smoothness of the generated values. 
  // e.g higher differences creates larger jumps
  // lower differences creates smaller jumps so the movement looks much natural
  
  // what ever number you put in "noise" funtion doesn't matter. The result always 
  // will be between 0 and 1. So, we need to map this result to
  // desired range that we want. For x values
  float noiseX = noise(noiseMultX);
  float mappedNoiseX = map(noiseX, 0, 1, -randomWalkStepSize, randomWalkStepSize);
  
  // For y values
  float noiseY = noise(noiseMultY);
  float mappedNoiseY = map(noiseY, 0, 1, -randomWalkStepSize, randomWalkStepSize);
  
  x = x + mappedNoiseX;
  y = y + mappedNoiseY;
  
  //point(x, y);
  line(pX, pY, x, y);
  
  // In order to generate randomization we need to increase or decrease the multiplier "noiseMultX" and "noiseMultY"
  // (todo: change the values. Make them smaller or larger and see what happens?)
  noiseMultX = noiseMultX + 0.01;
  noiseMultY = noiseMultY + 0.03;
  
}
