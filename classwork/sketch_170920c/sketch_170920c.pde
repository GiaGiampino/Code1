int x; 
int y; 
int size; 
float dist; 
boolean buttonClicked; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 100; 
}

void draw(){
    
  if(buttonClicked){
    background(0);  
    fill(random(0, 255), random(0,255), random(0, 255));
  }else{
    background(100, 150, 250); 
    fill(120, 255, 10); 
  }
  
  ellipse(x, y, size, size);  
  rect(x, y, size, size);
  dist = dist(mouseX, mouseY, x, y); 
  println(dist); 
}

void mousePressed(){
  if(dist <= 50){
    buttonClicked = !buttonClicked; 
  }
}