int num = 100;

Movers [] movers = new Mover[num]; //I don't know if I am doing this right. I tried to replicate our classwork but change it up a bit.

Attractor a;


void setup(){
  size(1000, 1000) ;
  
  for(int i = 0; i < num; i++){
    mover[i] = new Mover(random(.2, 2), random(width), random(height));
  }

  a = new Attractor();

}

void draw(){
  background(0);
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
  
  //can't run sketch

 
}

void mousePressed(){
  a.clicked(mouseX, mouseY);
  
}

void mouseReleased(){
  a.dragStop();
}