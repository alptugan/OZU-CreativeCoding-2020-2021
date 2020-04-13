import peasy.*;

// Declare easy cam variable
PeasyCam cam;

void setup() {
  // Set window position
  surface.setLocation(0,0);

  // Set the size of the window  same as your loaded image size (width, height) 
  size(800, 600, P3D);


  // Initialize the cam variable
  cam = new PeasyCam(this, 1000);
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(5000);
  cam.reset();
}


void draw() {
  background(0);
  

  
  /*stroke(255);
  noFill();
  pushMatrix();
  translate(200,0);
  rotateY(radians(millis()*0.02));
  float halfRad = 120 + sin(radians(millis()*0.05)) * 250;
  sphere(halfRad);
  popMatrix();*/
}
