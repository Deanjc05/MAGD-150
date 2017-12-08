float [] x = {150,450};
float [] y = {150,450};
float w = 75;
float h = 50;
float offsetW = w/2; 
float offsetH = h/2;
float circleH = 75;
float ballX = 50;
float ballY = 100;
float xDelta = 5;
float yDelta = 2;
void setup () {
  size(600,600);
  frameRate(60);
}

void draw() {
 background(255);
 //vertical Line
 line(300,0,300,600);
 //horizontal line
 line(0,300,600,300);
  
 //Rectangle button (TL)
 fill(255);
 rectMode(CENTER);
 rect(x[0],y[0],w,h);
 fill(0);
 text("HANDBALL",120,150);
  //when mouse pressed over rect, turn black and run command
  if(mousePressed){
  if(mouseX>x[1]-offsetW && mouseX <x[1] && mouseY>y[1]-offsetH && mouseY <y[1]+h){
    ADBR ();
   //command
   }
 }
 
 //Rectangle butoon (BR)
 rectMode(CENTER);
 rect(x[1],y[1],w,h);
 fill(0);
 text("FUNGI", 430,450);
 fill(255);
 //when mouse pressed over rect, turn black and run command
 if(mousePressed){
  if(mouseX>x[0]-offsetW && mouseX <x[0]+w && mouseY>y[0] && mouseY <y[0]+h){
    ADTL ();
   //command
  }
 } 
  //Circle butoon (TR)
  fill(255);
  ellipse(x[1],y[0],w,circleH);
  fill(0);
  text("Snowcone",420,150);
  //when mouse pressed over rect, turn black and run command
  if(mousePressed){
   if(mouseX>x[0] && mouseX <x[0]+w && mouseY>y[1] && mouseY <y[1]+h){
     ADBL ();
     fill(#82bc98);
     //command
  }
 } 
  //Circle butoon (BL)
  ellipse(x[0],y[1],w,circleH); 
  fill(255);
  //when mouse pressed over rect, turn black and run command
   if(mousePressed){
   if(mouseX>x[1]-offsetW && mouseX <x[1]+w && mouseY>y[0] && mouseY <y[0]+h){
     ADTR ();
     //command
  }
 } 
}


void ADTL () {
  fill(0);
  rectMode(CORNER);
  rect(0,0,300,300);
  //Ball
  fill(255);
  ellipse(ballX,ballY,25,25);
  //Sets the x and y variable for if statments
  ballX = ballX + xDelta;
  ballY = ballY + yDelta;
   //causes ball to bounce off of the walls
  if ((ballY > 275) || (ballY < 12 )) {
    yDelta = -1 * yDelta;
   }
  if ((ballX > 275) || (ballX < 12)) { 
    xDelta = -xDelta;
   }    
} 
void ADBR() {
  mushroom2();
  mushroom1();
  stroke(0);
  
}

void mushroom1 () {
  //ground
  fill(0,255,0);
  stroke(0);
  bezier(300,525,357,505,542,501,600,525);
  //mushroom stalk
  noStroke();
  rectMode(CORNER);
  rect(301,525,300,75);
  fill(255,0,0);
  rect(370,450,15,75);
  //mushroom cap
  bezier(325,450,347,371,438,399,420,450);
  //spots
  fill(255);
  ellipse(412,432,25,25);
  ellipse(381,412,25,25);
  ellipse(346,430,25,25);
}  

void mushroom2 () {
  //sky
  fill(0,0,255);
  rectMode(CORNER);
  rect(301,300,300,300);
  //ground
  fill(0,255,0);
  bezier(300,500,388,458,532,460,600,500);
  noStroke();
  rect(301,500,300,100);
  //mushroom stalk
  fill(255,0,0);
  rect(533,458,10,25);
  //mushroom cap
  bezier(512,459,508,420,565,420,560,459);
  //spots
  fill(255);
  ellipse(546,440,15,15);
  ellipse(520,448,15,15);
}
void ADBL() {
  //skin background
  fill(#f7e4ca);
  rectMode(CORNER);
  rect(0,300,300,299);
  //white eye
  fill(255);
  ellipse(150,450,300,100);
  //pink flesh
  fill(#e0a6a3);
  ellipse(7,450,15,15);
  ellipse(293,450,15,15);
  println ("EYE SEE YOU");
}
void ADTR() {
  //snowman head
  ellipse(450,86,50,50);
  //coal eyes
  fill(0);
  rect(440,72,10,10);
  rect(460,74,10,10);
  //carrot nose
  fill(#ea8b2c);
  triangle(450,82,469,88,450,90);
  //cone
  fill(#99c2c9);
  triangle(420,175,477,175,450,234);
}  