
color color1 = color(0,236,255);
color color2 = color(0,212,229);
color color3 = color(0,169,183);
color color4 = color(178,229,233);
color color5 = color(247,252,252);

void setup() {
  size(800, 600); 
  background(255,255,255);
} 

void draw() {
  
  float radius = random(width/2-20);
  
  float r = random(); //How to fix this bug?
  color col = color1;
  if(r>0.2 && r<0.4){
    col = color2;
  }else if(r<0.6){
    col = color3;
  }else if(r<0.8){
    col = color4;
  }else if(r>=0.8){
    col = color5;
  }
  
  //circular line
  noFill();
  stroke(col);
  strokeWeight(2);
  ellipse(width/2, height/2, radius*2, radius*2);
  
  
  if(random()<0.1){
    strokeWeight(1);
    float angle = random(PI*2);
    line(width/2, height/2, width/2+radius*sin(angle), height/2+radius*cos(angle));
  }
  
 
  if(random()<0.2){
    float circleSize = random(20, 60);
    float circlesInPerimeter = TWO_PI*radius/circleSize;
    float totalCircles = random(circlesInPerimeter);
    float angle = random(TWO_PI);
    float stepAngle = circleSize*TWO_PI/(TWO_PI*radius);
    fill(col);
    noStroke();
    for(float i=0; i<totalCircles; i++){
      angle += stepAngle;
      arc(width/2+sin(angle)*radius, height/2+cos(angle)*radius, circleSize, circleSize, TWO_PI-angle, TWO_PI+PI-angle);
    }
  }
}