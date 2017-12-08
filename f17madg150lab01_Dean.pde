void setup() {

size(300,300);
//image was inspired by a scene from "2001: A Space Odyssey
background(0); //sets background to black

noStroke(); //sun
fill(255);
ellipse(150,25,10,10);

noStroke(); //first partial eclipse white
fill(255);
ellipse(150,50,8,8);

noStroke(); //first partial eclipse black
fill(0);
ellipse(150,52,8,8);

noStroke(); //grey rectangle
fill(162);
rectMode(CENTER);
rect(150,150,250,25);

stroke(255); //outeredge of space ship
noFill();
ellipse(150,100,30,30);

line(150,85,150,115); //verticle line of space ship
line(135,100,165,100); //horizontal line of space ship

rectMode(CENTER); //center square of spaceship
rect(150,100,10,10);

noStroke(); //Light-grey rectangle
fill(200);
rectMode(CORNER);
rect(25,135,250,12);

noStroke(); //large eclipse white
fill(255);
ellipse(150,200,30,30);

noStroke(); //large eclipse black
fill(0);
ellipse(150,205,30,30);

noStroke(); //second eclipse white
fill(255);
ellipse(150,250,8,8);

noStroke(); //second partial eclipse black
fill(0);
ellipse(150,252,8,8);

fill(255); //point in the middle of frame. not visible from current view
point(150,150);

fill(255);
point(150,149);

fill(255);
point(150,151);
}