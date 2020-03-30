class noiseWalker {

  // Global public variables
  float x; // holds the x position values
  float y; // holds the y position values

  float pX; // holds the previous x position values
  float pY; // holds the previous y position values

  float randomWalkStepSize;

  float noiseMultX;
  float noiseMultY;

  float incX;
  float incY;
  
  // constructor
  noiseWalker() {
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
    noiseMultX = random(9999); 
    noiseMultY = random(9999,99999999); 
    
    
    incX = random(0.0001, 0.1);
    incY = random(0.0001, 0.1);
    
    /*println("noiseMultX : " + noiseMultX);
    println("noiseMultY : " + noiseMultY);
    println("-------------------------------");*/
  }

  void drawNoiseWalker() {
    // Set the stroke color
    stroke(0);

    // set the stroke thickness
    strokeWeight(1);

    // Assign previous x & y values to pX & pY variables to create continues line
    pX = x; // 770
    pY = y; // 20

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


    x = x + mappedNoiseX; // 12
    y = y + mappedNoiseY; // 22

    if (x > width) {
      x = 0;
      pX = x;
    }

    if ( x < 0 ) {
      x = width;
      pX = x;
    }


    if (y > height) {
      y = 0;
      pY = y;
    }

    if ( y < 0 ) {
      y = height;
      pY = y;
    }

    //point(x, y);
    line(pX, pY, x, y);
    ellipse(x, y, 20, 20);

    // In order to generate randomization we need to increase or decrease the multiplier "noiseMultX" and "noiseMultY"
    // (todo: change the values. Make them smaller or larger and see what happens?)
    noiseMultX = noiseMultX + incX;
    noiseMultY = noiseMultY + incY;
    
  }
}
