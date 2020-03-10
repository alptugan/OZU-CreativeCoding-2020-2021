int x;
int y;

void setup() {
  size(600, 600);
  background(255);

  x = width / 2;
  y = height / 2;
}



void draw() {
  step();
  
  stroke(0);
  //rect(x, y, 1, 1);
  point(x,y);
}

void step() {
  int choice = int(random(4));

  if (choice == 0) {
    x++;
  } else if (choice == 1) {
    x--;
  } else if (choice == 2) {
    y++;
  } else {
    y--;
  }
}
