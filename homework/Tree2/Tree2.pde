float xoff = 0.1;
  void setup() 
  {
  size(800,400);
  background(112,84,56);
  smooth();
  }
  void draw()
  {
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