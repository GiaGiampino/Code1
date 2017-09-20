int brushSize; 

void setup(){
  size(1000, 1000);  
  colorMode(RGB,100,500,10,255);
  fill(255,100,200); 
  brushSize = 20; 
}

void draw(){
  fill(255); 
  ellipse(50, 50, width, height); 
  ellipse(100, 75, width, height);
  ellipse(120, 20, width, height);
  ellipse(301, 30, width, height);
  ellipse(470, 50, width, height);
  ellipse(205, 50, width, height);
  ellipse(175, 150, width, height);
  ellipse(130, 125, width, height);
  ellipse(129, 39, width, height);
  ellipse(215, 50, width, height);
  ellipse(100, 10, width, height);
  ellipse(159, 135, width, height);
  ellipse(129, 39, width, height);
  arc(50, 150, 80, 180, 30, PI+QUARTER_PI, PIE);
  arc(25, 50, 80, 80, 20, PI+QUARTER_PI, PIE);
  arc(50, 150, 80, 80, 10, PI+QUARTER_PI, PIE);
  arc(50, 50, 80, 80, 40, PI+QUARTER_PI, PIE);
  

  
  
  if(mousePressed){
    fill(200, 255, 200); 
    noStroke(); 
    rect(mouseX, mouseY, brushSize, brushSize); 
    ellipse(60,20,16,16);
     ellipse(60,20,16,16);
     ellipse(205, 50, width, height);
  ellipse(175, 150, width, height);
  ellipse(130, 125, width, height);
  ellipse(129, 39, width, height);
    
  }
  
  }

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 10; 
    }else if(keyCode == UP && brushSize >10){
      brushSize -= 250; 
    }
  }
}

//I want to fill in these ellipse 