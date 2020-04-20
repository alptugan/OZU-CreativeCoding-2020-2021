// Import Processing audio library
import processing.sound.*;

// Declare the sound source and Waveform analyzer variables
SoundFile sample;

void setup() {
  surface.setLocation(0,0);
  
  size(800, 800);
  
  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "/Users/alptugan/oF/assets/loop2-120bpm.wav");
  
  // Set sample playing status to loop
  // So, whenever the song is stop playing, it starts from the begining again
  sample.loop();
}

void draw() {
  background(0);
}

void keyPressed() {
 // Hit s key to stop playing  & hit p key to start playing
 if(key == 's') {
  sample.stop();
 }else if(key == 'p') {
   sample.loop();
 }
}
