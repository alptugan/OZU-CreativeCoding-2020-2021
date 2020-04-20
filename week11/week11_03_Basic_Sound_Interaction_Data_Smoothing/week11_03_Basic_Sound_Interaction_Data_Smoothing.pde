// Import Processing audio library
import processing.sound.*;

// Declare the sound source and amplitude variables
SoundFile sample;
Amplitude rms;

// Position variables for ellipse on the canvas
float x;
float y;
float radius;

boolean isRMSSmoothed;

// Declare a smooth factor to smooth out sudden changes in amplitude.
// With a smooth factor of 1, only the last measured amplitude is used for the
// visualisation, which can lead to very abrupt changes. As you decrease the
// smooth factor towards 0, the measured amplitudes are averaged across frames,
// leading to more pleasant gradual changes
// change the following value to see how it affects the animation
float smoothingFactor = 0.35;

// Used for storing the smoothed amplitude value
float sum;

// variable for sum; scale the value of sum variable that calculates the smoothed values  
float rmsMapped;


void setup() {
  
  surface.setLocation(0,0);
  size(800, 800);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "/Users/alptugan/oF/assets/loop2-120bpm.wav");

  // Set sample playing status to loop
  // So, whenever the song is stop playing, it starts from the begining again
  sample.loop();

  // Create the Amplitude analyzer and connect the playing soundfile to it
  rms = new Amplitude(this);
  rms.input(sample);

  // Set ellipse variables
  x = width * 0.5;
  y = height * 0.5;

  // Set default radius when there is no sound
  radius = 5;

  // By deafult enable data smoothing
  isRMSSmoothed = true;
}


void draw() {
  background(0);

  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smoothingFactor;

  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a fixed scale factor
  rmsMapped = map(sum, 0, 1, 0, 200);

  // If isRMSSmoothed = true, set the radius value to rmsMapped
  // else get unsmoothed values and set the radius
  if (isRMSSmoothed == true) 
  {
    radius = rmsMapped;
  } else {
    radius = map(rms.analyze(), 0, 1, 0, 200);
  }
  
  noStroke();
  fill(255, 255, 255);

  ellipse(x, y, radius, radius);
}

void keyPressed() {
  // Hit the s key to stop playing
  // Hit the p key to start playing
  // Hit the d key to disable data smoothing to see difference between smoothed value and non-smoothed value
  if (key == 's') {
    sample.stop();
    radius = 0;
  } else if (key == 'p') {
    sample.loop();
  } else if (key == 'd') {
    // The ! means;
    // whenever you hit 'd' key on keyboard
    // Set the 'isRMSSmoothed' value to opposite result
    // e.g; if the 'isRMSSmoothed's value is TRUE, it will be FALSE.
    // and vice versa...
    isRMSSmoothed = !isRMSSmoothed;
  }
}
