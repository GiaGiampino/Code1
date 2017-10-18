int x; 
int y; 
int x2, y2; 
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2; 
float c , d; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  x2= 100; 
  y2= 100; 
  size = 150; 
}

void draw(){
    
  if(buttonClicked){
    background(0); 
    fill(255, 100, 75); 
    //map size variable to mouse 
    d = 500; 
  }else{
    background(255); 
    fill(0, 255, 0); 
    c = map(mouseX, 0, width, 0, 175);
     d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);  
  }
  ellipse(width/2, height/2, d, d); 
  if(buttonClicked2){
    fill(0, 0, 255); 
    rect(400, 300, 150, 200); 
    ellipse(56, 46, 55, 55);
    
  }else{
   
    rect(100, 300, 450, 300);
  }
  
  
  ellipse(x, y, size, size);  
  ellipse(x2, y2, size, size); 
  println(calcDistance(x, y)); 
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  }
 
} 

 float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}