Human h1;
Human h2;
Human h3;
Human h4;
Human h5;
Human h6;

float theLongestDist;
float maxThickness;
float minThickness;
float mThickness;

float rx1,ry1;
float rx2,ry2;
float rx3,ry3;
float rx4,ry4;
float rx5,ry5;
float rx6,ry6;

void setup() {
  // Set window position on screen
  surface.setLocation(680, 0);

  size(600, 600);

  // Human(String _name, float _x, float _y, color _gender, float _age
  h1 = new Human("H1", random(width), random(height), color(30, 30, 255), 37);  
  h2 = new Human("H2", random(width), random(height), color(255, 30, 30), 20);
  h3 = new Human("H3", random(width), random(height), color(30, 30, 255), 22);
  h4 = new Human("H4", random(width), random(height), color(30, 30, 255), 45);
  h5 = new Human("H5", random(width), random(height), color(255, 30, 30), 25);
  h6 = new Human("H6", random(width), random(height), color(30, 30, 255), 30);

  theLongestDist = dist(0, 0, width, height);
  //println(theLongestDist);

  minThickness = 4;
  maxThickness = 1;
}

void draw() {
  //background(255);
noFill();
  // Draw line connections between human instance objects
  float dist0 = dist(h1.x, h1.y, h2.x, h2.y );
  float mappedDist0 = map(dist0, 0, theLongestDist, 255, 0);
  mThickness = map(dist0, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist0);
  line(h1.x, h1.y, h2.x, h2.y);

  float dist1 = dist(h1.x, h1.y, h5.x, h5.y );
  float mappedDist1 = map(dist1, 0, theLongestDist, 255, 0);
  mThickness = map(dist1, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist1);
  line(h1.x, h1.y, h5.x, h5.y);

  float dist2 = dist(h1.x, h1.y, h3.x, h3.y );
  float mappedDist2 = map(dist2, 0, theLongestDist, 255, 0);
  mThickness = map(dist2, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist2);
  line(h1.x, h1.y, h3.x, h3.y);

  float dist3 = dist(h1.x, h1.y, h4.x, h4.y );
  float mappedDist3 = map(dist3, 0, theLongestDist, 255, 0);
  mThickness = map(dist3, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist3);
  line(h1.x, h1.y, h4.x, h4.y);

  float dist4 = dist(h1.x, h1.y, h6.x, h6.y );
  float mappedDist4 = map(dist4, 0, theLongestDist, 255, 0);
  mThickness = map(dist4, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist4);
  line(h1.x, h1.y, h6.x, h6.y);

  // Draw line h2 objeect to all Human instance objects
  float dist5 = dist(h2.x, h2.y, h4.x, h4.y );
  float mappedDist5 = map(dist5, 0, theLongestDist, 255, 0);
  mThickness = map(dist5, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist5);
  line(h2.x, h2.y, h4.x, h4.y);

  // Draw line h2 objeect to all Human instance objects
  float dist6 = dist(h2.x, h2.y, h5.x, h5.y );
  float mappedDist6 = map(dist6, 0, theLongestDist, 255, 0);
  mThickness = map(dist6, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist6);
  line(h2.x, h2.y, h5.x, h5.y);

  float dist7 = dist(h2.x, h2.y, h6.x, h6.y );
  float mappedDist7 = map(dist7, 0, theLongestDist, 255, 0);
  mThickness = map(dist7, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist7);
  line(h2.x, h2.y, h6.x, h6.y);


  float dist8 = dist(h3.x, h3.y, h4.x, h4.y );
  float mappedDist8 = map(dist8, 0, theLongestDist, 255, 0);
  mThickness = map(dist8, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist8);
  line(h3.x, h3.y, h4.x, h4.y);

  float dist9 = dist(h5.x, h5.y, h4.x, h4.y );
  float mappedDist9 = map(dist9, 0, theLongestDist, 255, 0);
  mThickness = map(dist9, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist9);
  line(h5.x, h5.y, h4.x, h4.y);


  float dist10 = dist(h5.x, h5.y, h6.x, h6.y );
  float mappedDist10 = map(dist10, 0, theLongestDist, 255, 0);
  mThickness = map(dist10, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist10);
  line(h5.x, h5.y, h6.x, h6.y);

  float dist11 = dist(h4.x, h4.y, h6.x, h6.y );
  float mappedDist11 = map(dist11, 0, theLongestDist, 255, 0);
  mThickness = map(dist11, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist11);
  line(h4.x, h4.y, h6.x, h6.y);

  float dist12 = dist(h3.x, h3.y, h6.x, h6.y );
  float mappedDist12 = map(dist12, 0, theLongestDist, 255, 0);
  mThickness = map(dist12, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist12);
  line(h3.x, h3.y, h6.x, h6.y);

  float dist13 = dist(h3.x, h3.y, h5.x, h5.y );
  float mappedDist13 = map(dist13, 0, theLongestDist, 255, 0);
  mThickness = map(dist13, 0, theLongestDist, minThickness, maxThickness);
  strokeWeight(mThickness);
  stroke(0, 0, 0, mappedDist13);
  line(h3.x, h3.y, h5.x, h5.y);

  // Displays the Human class graphics
  h1.display();
  h2.display();
  h3.display();
  h4.display();
  h5.display();
  h6.display();

  if (frameCount % 100 == 0) {
    background();
    rx1 = random(100);
    ry1 = random(100);
    
    rx2 = random(100);
    ry2 = random(100);
    
    rx3 = random(100);
    ry3 = random(100);
    
    rx4 = random(100);
    ry4 = random(100);
    
    rx5 = random(100);
    ry5 = random(100);
    
    rx6 = random(100);
    ry6 = random(100);
  }
  
  h1.jiggle(rx1, ry1);
  h2.jiggle(rx2, ry2);
  h3.jiggle(rx3, ry3);
  h4.jiggle(rx4, ry4);
  h5.jiggle(rx5, ry5);
  h6.jiggle(rx6, ry6);
    
}
