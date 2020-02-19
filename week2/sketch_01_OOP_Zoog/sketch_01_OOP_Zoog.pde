Zoog zoog;
void setup() {
  size(800, 800);
  smooth();
  zoog = new Zoog(100, 125, 60, 60, 16);
}

void draw() {
  background(255);
  // mouseX position determines speed factor
  float factor = constrain(mouseX/10, 0, 5);
  zoog.jiggle(factor);
  zoog.display();
}
