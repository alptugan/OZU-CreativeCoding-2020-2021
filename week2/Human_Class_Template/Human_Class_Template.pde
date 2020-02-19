Human mySelf;
Human cagla;
Human enis;

void setup() {
  size(600,600);
  
  // Human(String _name, float _x, float _y, color _gender, float _age
  mySelf = new Human("ALP", 0, 0, color(30,30,255),37);
  mySelf.display();
  
  cagla = new Human("ÇAĞLA", 0, 0, color(255,30,30), 20);
  
  enis = new Human("ENİS", 0,0, color(30,30,255), 22);
  
}

void draw() {
  background(255);
  
  // Displays the Human class graphics
  mySelf.display();
  cagla.display();
  enis.display();
  
  mySelf.x = 100;
  mySelf.y = height - mySelf.mappedH - 10;
  
  cagla.x = mySelf.x + mySelf.mappedH*0.5 + cagla.mappedH*0.5 + 10;
  cagla.y = mySelf.y;
  
  enis.x = 150;
  enis.y = height * 0.5;
}
