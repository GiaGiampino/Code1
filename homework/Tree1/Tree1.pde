float theta;   

void setup() {
  size(1000, 500);
  
 
  
}

void draw() {
  background(111,138,141);
  frameRate(20);
  stroke(204, 102, 0);
  strokeWeight(1);  
  strokeCap(SQUARE);
  fill(255,236,239);
  
String s = "Appreciate the times when the trees will be bare, and look forward to the times when we may pick the fruit.-Anton Chekhov";
fill(50);
text(s, 20, 20, 80, 200);  








  float a = (mouseX / (float) width) * 90f;

  theta = radians(a);
 
  translate(width/2,height);
 
  line(0,0,0,-120);
  
  translate(0,-120);
  
  branch(120);

}

void branch(float h) {
  
  h *= 0.66;
  
  
  
  if (h > 2) {
    pushMatrix();    
    rotate(theta);   
    line(0, 0, 0, -h);  
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