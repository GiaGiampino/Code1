
void setup(){
  size(700, 700); 
  noStroke(); 
}

void draw(){
  background(255); 
  
  for (int i = 0; i <=width; i += width/35){
    for (int j = 0; j <= height; j += height/35){
      float s = height/35;  
      fill(0); 
      ellipse(i, j, s, s);   
    }
  }
}