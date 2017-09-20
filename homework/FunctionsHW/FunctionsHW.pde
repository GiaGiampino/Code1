
void setup() {
  size(1000, 360);
  background(250, 50, 25);
  noStroke();
  noLoop();
}

void draw() {
  drawTarget(width*0.25, height*0.4, 200, 4);
  drawTarget(width*0.5, height*0.5, 250, 10);
  drawTarget(width*0.30, height*0.3, 120, 6);
  drawTarget(width*0.10, height*0.2, 100, 6);
  drawTarget(width*0.35, height*0.1, 115, 7);
}
//I am really trying here

//I read a lot on the processing website 
//trying to make this my own version

void drawTarget(float xloc, float yloc, int size, int num) {
  float steps = size/num;
  for (int i = 0; i < num; i++) {
    fill(200, 175, 100);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
}