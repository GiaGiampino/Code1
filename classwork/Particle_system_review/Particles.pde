class Particle {
  
  PVector velocity;
  PVector position;
  PVector acceleration; 
  
  Particle (){
    acceleration = new PVector (0, 0.05);
    position = new PVector (mouseX, mouseY);
    velocity = new PVector (random (-1,1), random(-2, 0));
    
  }
  
  void update (){ 
    
   velocity . add (acceleration);
   position . add (velocity);
  }
  
  void display(){
    fill (255);
    ellipse (position.x, position.y, 8, 8); 
  }
    void checkedges (){
      if (position.x > width) {
        
        position.x = width; 
        velocity.x *= -1;
      } else if (position.x < 0) {
        velocity.x *= -1;
        position.x = 0; 
      }
    if (position.y > height){
      velocity.y *= -1;
      position.y = height; 
    }
   }
   void applyforce (PVector force){
     PVector f = PVector.div (force, 9);
     acceleration.add (f); 
   }
 } 