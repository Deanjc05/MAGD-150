void setup(){
 size(300,300);
 frameRate(15); 
 
}

void draw(){
  //sets background and shape modes
  rectMode(CENTER);
  ellipseMode(CENTER);
  background(#76b9f7);

//Draw fish
  //Color variables
  int r = 247;
  //Sets min and max color values
  int g = min(mouseY+15*2,255);
  int b = max(mouseY-200/2,0);
  noStroke();
  fill(r,g,b); //Makes fish change color in relation to mouseY position
  ellipse(mouseX,mouseY,75,30); //body
  triangle(mouseX-38,mouseY,mouseX-58,mouseY-15,mouseX-58,mouseY+15); //tail
  stroke(0);
  fill(0);
  ellipse(mouseX+20,mouseY-5,5,5); //eye
  //Sets Previous color variables
  int pg = min(pmouseY+15*2,255);
  int pb = max(pmouseY-200/2,0);
  
  println("Watch my color change from: " + (r),pg,pb + " to: " + (r),g,b); //Prints color of fish
  
//fishing line
  line(150,0,mouseX+38,mouseY); //fishing line
  //Sets mouse x and mouse y variables
  float lx = mouseX+38;
  float ly = mouseY;
  println("Length of fishing line" +dist(150,0,lx,ly)); //prints fishing line length
  
}
//to make bubbles form when mouse is pressed
void mousePressed() {
  
  noStroke();
  fill(#daeaed); //very light, washed-out blue
  ellipse(mouseX+42,mouseY-10,15,15); //bubble
    
  println("Blub Blub");

}