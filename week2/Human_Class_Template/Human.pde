// Name of the class
class Human {
  float h;      // height
  color gender; // color represents gender
  String name;  // name of the human
  float mappedH;
  float x;
  float y;

  // Constructor function 
  Human(String _name, float _x, float _y, color _gender, float _age) {
    h      = _age;
    gender = _gender;
    name   = _name;
    x      = _x;
    y      = _y;
  }

  void display() {
    // maps the age to desired range
    mappedH = map(h, 19, 37, 20, 80);
    
    noStroke();
    fill(gender);
    circle(x, y, mappedH);

    fill(0);
    textSize(10);
    textAlign(CENTER);
    text(name, x, y + mappedH*0.5 + 10);
  }
}
