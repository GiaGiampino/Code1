int x; 
int y; 
int size; 
float dist; 
boolean buttonClicked; 

void setup(){
  size(600, 600); 
  x = width/4; 
  y = height/4; 
  size = 250; 
}

//I want to change the frame rate but I am having a hard time

void draw(){
    
  if(buttonClicked){
    background(255);  
    fill(random(0, 255), random(0,255), random(0, 255));

  }else{
    background(110, 150, 250); 
    fill(50, 255, 130); 
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