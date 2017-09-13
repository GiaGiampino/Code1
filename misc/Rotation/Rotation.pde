void setup(){
  size(600, 600);
  smooth();
  background(255);
  fill(192);
  noStroke();
  rect(80, 80, 80, 80);
  
  pushMatrix();
  translate(60,60);
  rectMode(CENTER);
  rotate(radians(360));
  fill(0);
  rect(0, 0, 80, 80);
  popMatrix();
  
}
void draw() {

if(frameCount % 10 == 0){
  fill(random(0,255), random(0, 255), random(0,255));
  
  pushMatrix();
  translate(100,100);
  rotate(radians(frameCount % 360));
  rect(0, 0, 80, 20);
  ellipse(0, 0, 100, 400);
  popMatrix();
}
  
}

{ 
  pushMatrix();
  translate(100,100);
  rotate(radians(frameCount % 360));
  rect(0, 0, 80, 20);
  ellipse(0, 0, 100, 400);
  popMatrix();
}