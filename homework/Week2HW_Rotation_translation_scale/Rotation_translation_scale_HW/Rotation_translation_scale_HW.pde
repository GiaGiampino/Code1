void setup(){
  size(600, 600);
  smooth();
  background(255, 204, 0);
  fill(292);
  noStroke();
  rect(50, 80, 50, 80);
  
  pushMatrix();
  translate(80,80);
  rectMode(CENTER);
  rotate(radians(360));
  fill(255);
  rect(200, 200, 200, 200);
  popMatrix();
  
}
void draw() {

if(frameCount % 20 == 0){
  fill(random(0,255), random(0, 255), random(0,255));
  
  pushMatrix();
  translate(200,100);
  rotate(radians(frameCount % 360));
  rect(0, 0, 80, 20);
  rect(0, 0, 60, 60);
  rect(100, 50, 50, 20);
  ellipse(400, 200, 100, 400);
  ellipse(200, 100, 100, 100);
  ellipse (10, 10, 10, 10);
  rect(300, 100, 50, 40);
  triangle(100, 50, 20, 75, 40, 75);
  triangle(20, 100, 100, 50, 75, 75);
  ellipse(10, 100, 10, 100);
  noStroke();
translate(40, 40, 40);
sphere(10);



  popMatrix();
}
  
  
}