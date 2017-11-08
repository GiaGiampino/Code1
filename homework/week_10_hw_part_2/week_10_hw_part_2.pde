// Got confused with hw for last week. Courtney said to do a little extra this week to get credit for both weeks


int num = 50;

Movers [] movers = new Mover[num];


Attractor a;


void setup(){
  size(1000, 1000);
  
  for(int i = 0; i < num; i++){
    mover[i] = new Mover(random(.1, 1), random(width), random(height));
  }
 
  a = new Attractor();

}

// Are movers new array?

void draw(){
  background(250);
  noStroke();
  
  a.display();
  a.dragStart();
  a.hover(mouseX, mouseY);
 
  for(int i = 0; i < num; i++){
    PVector force = a.attract(mover[i]);
    mover[i].applyForce(force);
    mover[i].update();
    mover[i].display();
  }
  
//I think I am close but am mesisng something up with the syntax. I tried 

}

void mousePressed(){
  a.clicked(mouseX, mouseY);
   
}

void mouseReleased(){
  a.dragStop();
}