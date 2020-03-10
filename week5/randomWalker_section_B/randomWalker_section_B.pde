Walker agent1;
Walker agent2;
Walker agent3;

WalkerSlave agentSlave1;

void setup() {
  size(600, 600);
  background(255);
  
  agent1 = new Walker(width/2, height/2);
  agent2 = new Walker(width/2, height/2);
  agent3 = new Walker(width/2, height/2);
  
  agent1.stepFactor = 10;
  agent2.stepFactor = 5;
  agent3.stepFactor = 15;
  
  agentSlave1 = new WalkerSlave(width/2, height/2);
  agentSlave1.curCl = color(#ff0000);
}

void draw() {
  
  noStroke();
  fill(255,255,255,1);
  rect(0,0,width,height);
  
  agentSlave1.display();
  
  agent1.display();
  agent2.display();
  agent3.display();
}
