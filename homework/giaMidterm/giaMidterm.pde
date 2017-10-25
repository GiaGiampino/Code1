int sceneNumber = 0; 

void setup(){
  size( 1000, 1000); 
  tree1Setup();
  tree2Setup(); 
  tree3Setup();
  tree4Setup(); //Is that right? 
  
}


void draw(){
  
  switch(sceneNumber){
    case 0: 
      tree1Draw(); 
      break; 
    case 1: 
      tree2Draw(); 
      break; 
    //last scene number
    case 2: 
      tree3Draw(); 
      //code for tree 3 
      break; 
    case 3: 
      tree4Draw(); 
      break; 
    case 4: 
      sceneNumber = 0; 
  }
  
  println(sceneNumber); 

}

void mousePressed(){
  sceneNumber += 1; 
  
}

float theta;
void tree1Setup(){
  //code from void setup of tree 1  
}

void tree1Draw(){
  // code from void draw of tree 1 
   background(111,138,141);
  frameRate(20);
  stroke(204, 102, 0);
  strokeWeight(1);  
  strokeCap(SQUARE);
  fill(255,236,239);
  
  //Still can't get tree 1 to appear 
  
  String s = "Appreciate the times when the trees will be bare.";
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
  
float xoff = 0.1; 
void tree2Setup(){
  //code from tree 2 setup. Tree 2 has this "float xoff = 0.1;" before void setup 

  background(112,84,56);
  smooth();
  
}

void tree2Draw(){
  //Code from void draw of tree 2
  
   frameRate(5);
  float x = random(40,550);
  float y = random(26,150);
  float g = random(50, 355);
  float n = noise(xoff) * 310;
  float nc = noise(xoff) * g;
  stroke(nc, 0, 0);
  strokeWeight(random(2,10));
  line(x,y,x,1960);
  noStroke();
  fill(0, nc, 0);
  float x2 = random(30, 50);
  float y2 = random(30, 80);
  ellipse(x,y,x2,y2);
  }
  
 
void tree3Setup(){
  //code from void setup of tree 3
  

  
  //noLoop(); 
}

void tree3Draw(){
  //doe from void draw of tree 3
  
  translate(width/2,height);
  rotate(random(-PI/8));
  segment(100, 10);
  rotate(random(PI/4));
  segment(100, 10);
  strokeWeight(8); 
  stroke(178,165,167);
line(20, 40, 80, 40);

String s = "He who plants a tree, plants a hope. -Abe Lincoln ";
fill(50);
text(s, 76, 300, 120, 50);  // I can't get the text to show up on sceen. Should it be in setup?


  
}

void segment(float h, int level){
  float c = random(100);
  stroke(c,c/2,0);
  strokeWeight(float(level)*.8);
  line(0,0,0,-h);

  if(level>0){
    level--;
   for(int t = 0; t<round(2); t++){
    pushMatrix();
      translate(0,-h);
      rotate(random(-PI/8,PI/8)); //Size/circumference of the circles
      segment(h*random(.5,1), level);
    popMatrix();
   }
  
  }else{
    if(random(1)>.8){ 
    pushMatrix();
      translate(0,-h);
      rotate(random(-PI/8,PI/8));
      float r = random(3,10);
      fill(random(255),random(255),random(255),random(100,255));
      ellipse(0,0,r,r);
    popMatrix();
    }
  }   
}
  
void tree4Setup(){
    //code from void setup of tree 4   
  //noLoop();
  textSize(15);
  text("In nature, nothing is perfect and everything is perfect. Trees can be contorted, bent in weird ways, and they're still beautiful -Alice Walker", 10, 20); 
  fill(0, 102, 153); 
}
    
void tree4Draw(){    
  background(76,87,117);   
  strokeWeight(12);
  translate(width/3,height);
  branch(0);
  stroke(255,192,203);
  
}

void branch(int depth)
{
    if (depth < 10) {
      line(0,0,0,-height/3);
      pushMatrix();
      {
        translate(0,-height/4);
        rotate(random(-PI/4,PI/4));
        scale(0.7);
        branch(depth + 1);
      }
      popMatrix();
      pushMatrix();
      {
        translate(0,-height/3);
        rotate(random(-PI/4,PI/4));
        scale(0.7);
        branch(depth + 1);
      }
      popMatrix();
    }
}

//References and inspirations for this project come from Open Processing. Credit goes to respective owners 