void setup() {
  size(800,600);
  background(211,219,220);
  smooth();
  stroke(178,165,167);
  
  noLoop();  
}

void draw(){
 translate(width/2,height);
  rotate(random(-PI/8));
  segment(100, 10);
  rotate(random(PI/4));
  segment(100, 10);
  strokeWeight(8); 
  stroke(178,165,167);
line(20, 40, 80, 40);

String s = "“He who plants a tree, plants a hope. -Abe Lincoln ";
fill(50);
text(s, 76, 300, 120, 50);  // I can't get the text to show up on sceen


  
}

void mousePressed(){
  
  redraw();
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