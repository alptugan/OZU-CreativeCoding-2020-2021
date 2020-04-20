// Import Processing audio library
import processing.sound.*;

// Declare the sound source and amplitude variables
SoundFile sample;
Amplitude rms;
Waveform waveform;

// Define how many samples of the Waveform you want to be able to read at once
int samples = 200;

// Position variables for ellipse on the canvas
float x;
float y;
float radius;

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


  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);
  waveform.input(sample);

  // Set ellipse variables
  x = width * 0.5;
  y = height * 0.5;

  // Set default radius when there is no sound
  radius = 5;
}


void draw() {
  background(0);

  // get song loudness value and set radius
  // rms.analyze() return a value between 0 and 1.
  // So, we should map the value to a larger number
  radius = map(rms.analyze(), 0, 1, 0, 200);

  noStroke();
  fill(255, 255, 255);
  //ellipse(x, y, radius, radius);


  // Draw waveform
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();

  beginShape();
  for (int i = 0; i < samples; i++) {
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    float mx = map(i, 0, samples, 0, width);
    float my = map(waveform.data[i], -1, 1, 0, height);
    vertex(mx, my);
  }
  endShape();
}

void keyPressed() {
  // Hit s key to stop playing  & hit p key to start playing
  if (key == 's') {
    sample.stop();
  } else if (key == 'p') {
    sample.loop();
  }
}
