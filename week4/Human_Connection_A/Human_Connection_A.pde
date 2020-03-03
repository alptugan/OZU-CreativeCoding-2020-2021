Human h1;

// declare humans ArrayList Object
ArrayList<Human> humans;
int numHuman;
void setup() {
  // Set window position on screen
  surface.setLocation(680, 0);

  size(600, 600);
  
  // Instantiate the "humans" variable
  humans = new ArrayList<Human>();
  
  numHuman = 30;
  
  // Add the h1 to "humans" arraylist
  
  for(int i = 0; i < 40; i = i + 1) {
    // Human(String _name, float _x, float _y, color _gender, float _age
    h1 = new Human(str(i), random(width), random(height), color(26, 188, 156), random(8, 20)); 
    humans.add(h1);
  }
  
  smooth();
}

void draw() {
  background(255);

  // Displays the Human class graphics
  // h1.display();
 
  
  for(int i = 0; i < numHuman; i = i + 1) {
    humans.get(i).display();
  }
}
