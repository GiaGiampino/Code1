PVector position; 
PVector velocity; 
int radius = 100 ; 
void setup(){
  size (500, 500); 
  background(0); 
  
  position = new PVector(width/2, height/2); 
  velocity = new PVector(5, 7); 
  
  
}

void draw(){
  background(0); 
  position.add(velocity); 
  
  if( position.x >= (width- radius/2) || position.x <= radius/2){
     velocity.x = velocity.x *-1; 
  }
  
  if( position.y >= (height-radius/2) || position.y <= radius/2){
    velocity.y = velocity.y *-1 ; 
  }
  
  ellipse(position.x, position.y, radius, radius); 
}