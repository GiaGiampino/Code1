void setup()
{
  size(750,750);
  background(249,186,34);
}
void draw()
{
stroke(200);
fill(random(200), random(10,15),100,5);
translate(mouseX,mouseY);
rotate(millis() / 500.0);
ellipse(32,32,80,80);
ellipse(10,10,25,25);

fill(random(200), random(10,150),100,30);
rotate(millis() / 2500.0);
rect(50,50,100,100);
rect(20,20,60,60);
}