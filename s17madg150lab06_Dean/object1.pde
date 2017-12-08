 class object1 {
  
 // set variable names
 float posX, posY, h, s, b;
 
object1(){
 //set color variable amounts
   h = random(1,360);
   s = random(1,100);
   b = random(1,100);
 //set position variable amounts
   posX = random(1,1000);
   posY = random(1,800);
 }
 
 void display() {
   colorMode(HSB, 360, 100, 100);
   fill(h, s, b);
   rectMode(CORNER);
   rect(posX, posY, 100, 75);
 } 

void update(){
   h = random(1,360);
   s = random(1,100);
   b = random(1,100);
 //set position variable amounts
   posX = random(1,1000);
   posY = random(1,800);
}
  
}