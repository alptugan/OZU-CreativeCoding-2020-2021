class Human {
   
  float h;      // height
  color gender; // color represents gender
  String name;  // name of the human
  float mappedH;
  float x,y;
  
  // Constructor - acts like setup function
  Human() {
    h = 0;
    gender = color(0,0,0);
    name = "";
    x = 0;
    y = 0;
  }
  
  void display() {
    
    mappedH = map(h, 19, 37, 20, 80);
    noStroke();
    fill(gender);
    circle(x,y,mappedH);
    fill(0);
    textSize(10);
    textAlign(CENTER);
    text(name,x,y + mappedH*0.5 + 10);
  }
  
}
