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

// Variable to store amplitude history
FloatList rmsHistory;

void setup() {
  surface.setLocation(0, 0);

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

  // Init array
  rmsHistory = new FloatList();
}


void draw() {
  //background(0);
  // Draw trail effect
  fill(0, 10);
  rect(0, 0, width, height);
  // get song loudness value and set radius
  // rms.analyze() return a value between 0 and 1.
  // So, we should map the value to a larger number
  radius = map(rms.analyze(), 0, 1, 0, 200);

  noStroke();
  fill(255, 255, 255);
  ellipse(x, y, radius, radius);


  // Draw waveform
  stroke(255);
  strokeWeight(2);
  noFill();

  // Every frame, add current amplitude value
  rmsHistory.append(rms.analyze());

  // Draw values on circular path
  pushMatrix();
  translate(width*0.5, height*0.5);
  beginShape();
  for (int i = 0; i < rmsHistory.size(); i++) {
    float rmsRad = map(rmsHistory.get(i), 0, 1, 50, height);
    //float rmsRad = 200;
    float xc = cos(radians(i)) * rmsRad;
    float yc = sin(radians(i)) * rmsRad;
    vertex(xc, yc);
  }
  endShape();
  popMatrix();

  // To move line from left to right,
  // we remove the first element from the array whenever
  // the number of amplitude values in rmshHistory array
  // exceeds the window width 
  if (rmsHistory.size() > 360) {
    rmsHistory.remove(0);
  }
}

void keyPressed() {
  // Hit s key to stop playing  & hit p key to start playing
  if (key == 's') {
    sample.stop();
  } else if (key == 'p') {
    sample.loop();
  }
}
