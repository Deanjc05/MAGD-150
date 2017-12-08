boolean dragging;
float x = 300;
float xDelta = 5;
float yDelta = 2;
float y = 300;
float hue, sat, bri, offsetX, offsetY;
int radiusX = 50;
int radiusY = 50;

void setup() {
  size(800,600);
  surface.setResizable(true);
  frameRate(60);
}

void draw() {
  
  background(0);
  //Ball
  colorMode(HSB, 359, 99, 99);
  fill(hue,sat,bri);
  stroke(360,0,100);
  ellipse(x,y,radiusX,radiusY);
  
  //Sets the x and y variable for if statments
  x = x + xDelta;
  y = y + yDelta;
  
  //allows mouse to click anywhere on ball to drag
  if (dragging) {
    x = mouseX - offsetX;
    y =mouseY - offsetY;
  }
  
  //causes ball to bounce off of the walls
  if ((y > height - 25) || (y < 25 )) {
    yDelta = -1 * yDelta;
    //causes ball to change color when it touches the Y walls
    hue = random(1,359);
    sat = random(10,99);
    bri = random(25,99); 
  }
  if ((x > width -25) || (x < 25)) { 
    xDelta = -xDelta;
    //causes ball to chang color when it touches the X walls
    hue = random(1,359);
    sat = random(10,99);
    bri = random(25,99);
  }    
     
} 

void mousePressed() {
  // formula that finds the mouse point as long as
  // the point and the ellipse center is less than the
  // radius (25).
  if (dist(mouseX, mouseY, x, y) < 25) {
    offsetX = mouseX - x;
    offsetY = mouseY - y;
    dragging = true;
  }
}

void mouseReleased() {
  dragging = false;
}

void keypressed() {
 background(hue,sat,bri);
 
}  