class FourSeasons {
  //declare variables
  float frameSizeX, frameSizeY;
  int x0, x1, y0, y1;
  float rot = 0;
  
  void variableBank(){
   frameSizeX = 85;
   frameSizeY = 100; 
   x0 = 5;
   x1 = 550;
   y0 = 5;
   y1 = 252;
   
 }
 
 void spring(){
 //frame
 fill(255);
 rectMode(CORNER);
 rect(x1,y0,frameSizeX,frameSizeY);
 fill(#d142f4);
 //Pedals
 noStroke();
 ellipse(x1+42,y0+50,60,60);
 //Middle
 fill(0);
 ellipse(x1+42,y0+50,20,20);
 
 
 stroke(0);
 }
 
 void summer(){
 //frame
 fill(255);
 rectMode(CORNER);
 rect(x1,y1,frameSizeX,frameSizeY); 
 //catetpillar
 fill(0);
 ellipse(x1+42,y1+50,5,30);
 fill(#f49b2e);
 triangle(595,301,622,284,619,320);
 triangle(563,284,587,301,568,320);
 stroke(0);
 }
  
 void fall(){
 //frame
 fill(255);
 rectMode(CORNER);
 rect(x0,y1,frameSizeX,frameSizeY); 
 //leaf
 noStroke();
 fill(#f49b2e);
 triangle(47,267,30,300,63,300);
 triangle(82,288,62,300,79,311);
 triangle(12,288,34,300,16,311);
 beginShape (QUADS);
 vertex(13,297);
 vertex(81,297);
 vertex(73,327);
 vertex(25,327);
 beginShape(QUADS);
 vertex(30,326);
 vertex(67,326);
 vertex(61,340);
 vertex(38,340);
 stroke(0);
 }
 
 void winter(){
 //frame
 fill(255);
 rectMode(CORNER);
 rect(x0,y0,frameSizeX,frameSizeY); 
 //snow ball
 noStroke();
 fill(#e3f6fc);
 ellipseMode(CENTER);
 
 ellipse(x0+42,y0+50,35,35);
 
 stroke(0);
 }
 
}