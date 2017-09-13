void setup(){
  size (600, 600);
  background(0);
  
  fill(0,10);
  rect(0, 0, width, height);
}

void draw(){
//line(x point1, y point1, xpoint2, y point2)
background (0);

stroke(random(0,255), random(0,255), random(0,255));
line(width/2, height/2, mouseX, mouseY);

line(mouseX, height/2, mouseX, width/2);

println(mouseX);
println(mouseY);
}