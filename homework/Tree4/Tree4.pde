

void setup()
{
  size(600,600);

  noLoop();
 
  textSize(15);
text("In nature, nothing is perfect and everything is perfect. Trees can be contorted, bent in weird ways, and they're still beautiful -Alice Walker", 10, 20); 
fill(0, 102, 153);


  
}

void draw()
{
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

void mouseClicked()
{
  redraw(); 
}