 
float theta;   
float c = 0;


void setup() {
  
  
  
  fill(200);
  size(1000, 1000);
stroke(255);
frameRate(100);
  background(255,105,180);


}


int value = 0;
void draw() {
  


  
 
  

   fill(150);
stroke(204, 202, 49);
colorMode(RGB, 255);
  frameRate(20);
  stroke(255);


  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
  

  textSize(32);
text("Gia", 10, 30); 
fill(27, 102, 153);
text("Was", 10, 60);
fill(255, 47, 10);
text("Here", 10, 90);




while(c < 200) {
  fill( random(255), random(255), random(255), random(255));
  rect(200,130,20, 25);

  fill( random(255), random(255), random(255), random(255));
  rect(260,10,60, 75);

  rotate(0.06);
  c = c + 4;
}

  //I tried to incorporate a few different concepts I learned so far. I know this may not be the most beautiful, but it does employ a lot of techniques I have been learning!
  
 
  float a = (mouseX / (float) width) * 105f;

  theta = radians(a);

  translate(width/15,height);
  
//make line


  line(0,0,0,-530);

  translate(0,-300);

  branch(270);
  

}

void branch(float h) {
 
  h *= 0.70;
  

  if (h > 20) {
    pushMatrix();    
    rotate(theta);   
    line(20, 30, 10, -h);  
    translate(0, -h); 
    branch(h);       
    popMatrix();     
  
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}