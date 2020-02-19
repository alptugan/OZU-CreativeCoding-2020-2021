class HumanClass {
  color gender = color(0, 0, 200);
  float rad = 100;
  String name = "ALP";

  float x;
  float y;

  float mappedRad;
  HumanClass() {
    x = width*0.5;
    y = height*0.5;
    
  }

  void display() {
    
    mappedRad = map(rad, 155, 189, 50, 100 );
    

    noStroke();
    fill(gender);
    circle(x, y, mappedRad);

    textSize(10);
    textAlign(CENTER);
    fill(0);

    text(name, x, y + mappedRad * 0.5 + 10);
  }
}
