int sceneNumber = 0; 

void setup(){
  fullScreen(2); 
}

void draw(){
  switch(sceneNumber){
    case 0 :
      scene0(); 
      break; 
    case 1: 
      scene1(); 
      break; 
    case 2: 
      scene2(); 
      break; 
    case 3: 
      scene3(); 
      break; 
    case 4:
      sceneNumber = 0; 
      break; 
  }
  
  fill(255); 
  rect(width/2, height/2, 100, 100); 
  rectMode(CENTER); 
  
}

void mousePressed(){
  if(mouseX> (width/2 -50) && mouseX<(width/2+50)
     && mouseY > (height/2 - 50) && mouseY <(height/2 +50)){
      sceneNumber ++;   
      println("this worked"); 
  }
}

void scene0(){
  background(255, 0, 255); 
}

void scene1(){
  background(0, 0, 255); 
}

void scene2(){
  background(0, 255, 255); 
}

void scene3(){
  background(255, 0, 0); 
}


int size = 50; 

color[][] grid = new color[size][size]; 
int[][] opacity = new int[size][size]; 
int[][] speed = new int[size][size]; 
boolean[][] fall = new boolean[size][size]; 

void setup() {
  size(500, 500); 
  noStroke(); 
  //set rectangles based on grid 2d array 
  for (int i =0; i<size; i++) {
    for (int j = 0; j<size; j++) {
      grid[i][j] = color(random(50, 140), random(200, 255), random(100, 255)); 
      opacity[i][j] = 255;
      speed[i][j] = 1; 
      fall[i][j] = false; 
    }
  }
}

void draw() {
  background(0); 

  for (int i = size-1; i>=0; i--) {
    for (int j= size-1; j>=0; j--) {
      fill(grid[i][j], opacity[i][j]); 
      rect(i*size, j*size + speed[i][j], size, size); 

     if (mousePressed) {
        if (mouseX>=(i*size) && mouseX<((i+1)*size) &&
          mouseY>=(j*size) && mouseY<((j+1)*size)) {
          //opacity[i][j]= 0;
          //speed[i][j] ++;  
          fall[i][j] = true; 
        }
      }
      
      if(fall[i][j]){
        speed[i][j] += 3; 
      }

      if (frameCount % 120 == 0) {
        opacity[i][j] = 255;
      }
    }
  }
}