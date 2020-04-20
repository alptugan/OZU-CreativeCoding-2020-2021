// Import Processing audio library
import processing.sound.*;

// Declare the sound source and amplitude variables
SoundFile sample;
Amplitude rms;

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

  // Set ellipse variables
  x = width * 0.5;
  y = height * 0.5;
  
  // Set default radius when there is no sound
  radius = 0;
}


void draw() {
  //background(0);
  fill(0,0,0,10);
  rect(0, 0, width, height);
  
  // get song loudness value and set radius
  // rms.analyze() return a value between 0 and 1.
  // So, we should map the value to a larger number
  radius = map(rms.analyze(), 0, 1, 0, 500);
  
  noStroke();
  
  fill(255,0,0);
  ellipse(x, y, radius*1.6, radius*1.8);
  
  fill(255,255,255);
  ellipse(x, y, radius, radius);
  
}

void keyPressed() {
 // Hit s key to stop playing  & hit p key to start playing
 if(key == 's') {
  sample.stop();
 }else if(key == 'p') {
   sample.loop();
 }
}
