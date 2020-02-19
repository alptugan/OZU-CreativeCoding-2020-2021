Human h1;

void setup() {
 size(500,500); 
 
 h1 = new Human();
 h1.h = 37;
 h1.gender = color(30,30,255);
 h1.name = "ALP";
 h1.x = width * 0.5;
 h1.y = height * 0.5; 
}


void draw() {
  background(255);
  h1.display();
}
