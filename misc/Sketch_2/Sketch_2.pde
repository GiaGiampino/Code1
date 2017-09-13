int w;
int h;
float myFloat;
String myString; 


void setup () {
  myString= ("Gia Made This");
  //println(myString);
  w= 100; 
  h= 200; 
  
  
  size (650, 650);
  background(50,20,250);
  noStroke();
  //frameRate(100)
  
  //println("Gia Made This");
  
  //println("I made this");
 textSize(35); 
}

//this is a test to see if this works 

void draw() {
  
  //println("Gia Made This"); 
  ellipse(width*.25, height*.25, 100, 50);
  
  ellipse(width*.25, height*.25, 50, 50);
  

fill( random(255), random(255), random(255), random(255));

  rect(width*.25, height*.50,150,150);
  
  //println("Hello");
  }