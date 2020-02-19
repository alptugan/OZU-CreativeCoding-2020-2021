HumanClass alpTheHuman;
HumanClass serra;
HumanClass sena;

void setup() {
  size(600, 600);
  
  alpTheHuman = new HumanClass();
  alpTheHuman.x = width - alpTheHuman.rad * 0.5;
  alpTheHuman.y = height - alpTheHuman.rad * 0.5 - 20;
  alpTheHuman.rad = 180;
  
  serra = new HumanClass();
  serra.gender = color(200,0,0);
  serra.name = "SERRA";
  serra.rad = 155;
  serra.x = alpTheHuman.x;
  serra.y = alpTheHuman.y - 100;
  
  sena = new HumanClass();
  sena.gender = serra.gender;
  sena.name = "SENA";
  sena.rad = 160;
  sena.x = serra.x;
  sena.y = 200;
}


void draw() {
  
  background(255);
  alpTheHuman.display();
  serra.display();
  sena.display();
}
