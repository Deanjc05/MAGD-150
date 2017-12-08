// Based on code by Daniel Shiffman

class clockClass {
  
void clockFace(){
 float [] x={320,465,175}; 
 float [] y={35,325,180};
  fill(255);
  ellipse(x[0],y[2],325,325);
  fill(0);
  rectMode(CENTER);
  rect(x[0],y[0],10,30);
  rect(x[0],y[1],10,30);
  rect(x[1],y[2],30,10);
  rect(x[2],y[2],30,10);
  ellipse(x[0],y[2],10,10);
}

void minuteHand(){ 
  
    // A vector that points to the mouse position
    PVector mouse = new PVector(mouseX,mouseY);
    // A vector that points to the center of the window
    PVector center = new PVector(width/2,height/2);
    // Subtract center from mouse which results in a vector that points from center to mouse
    mouse.sub(center);
    
    // Normalize the vector
    mouse.normalize();
    
    // Multiply its length by 50
    mouse.mult(150);
 
     translate(width/2,height/2);
    // Draw the resulting vector
    stroke(0);
    strokeWeight(2);
    line(0,0,mouse.x,mouse.y);
 }
 void hourHand(){
   
     // A vector that points to the mouse position
    PVector mouse = new PVector(mouseX,mouseY);
    // A vector that points to the center of the window
    PVector center = new PVector(width/2.5,height/2.5);
    // Subtract center from mouse which results in a vector that points from center to mouse
    mouse.sub(center);
    
    // Normalize the vector
    mouse.normalize();
    
    // Feduce length by half
    mouse.mult(75);
 
    // Move vector to middle of clock face
     translate(width/175,height/175);
    // Draw the resulting vector
    stroke(0);
    strokeWeight(4);
    line(0,0,mouse.x,mouse.y);
 }
}