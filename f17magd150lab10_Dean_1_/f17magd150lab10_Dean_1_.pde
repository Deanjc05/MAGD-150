PImage meatball, eye;
PShape sphere, cube;

//float variables for cameria and rotation movement
float angle, camSpeed, 
  x, y, z, 
  lookAtX, lookAtY, lookAtZ, 
  upX, upY, upZ, 
  orthoScale, 
  viewDist, 
  extents = 250;
boolean orthographic;

void setup() {
  pixelDensity(displayDensity());
  size(640, 420, P3D);
  background(0);
  noStroke();
  //meatball sphere
  meatball = loadImage("Meatball.jpg");
  sphere = createShape(SPHERE, height / 2.5);
  sphere.setTexture(meatball);
  //eyebox
  eye = loadImage("Eyeball monster filtered.jpg");
  cube = createShape(BOX,height / 2.5);
  cube.setTexture(eye);
  
  //set variable values
  angle = 0;
  camSpeed = 2.5;
  x = width / 2.0;
  y = height / 2.0;
  z = viewDist = (height / 2.0) / tan(PI * 60.0 / 360.0);
  lookAtX = x;
  lookAtY = y;
  lookAtZ = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
  orthoScale = 2.0;
  orthographic = false;
}

void draw() {
  background(32);
  pointLight(255, 127, 127, 0, 0, -extents);
  pointLight(127, 255, 127, width, 0, -extents);
  pointLight(127, 127, 255, width, 0, extents);
  pointLight(255, 127, 255, 0, 0, extents);
  directionalLight(127, 127, 127, 0, 0, -1);

  // Orthographic projection does not change the size of
  // an object based on distance.
  
  camera(x, y, z, 
    lookAtX, lookAtY, lookAtZ, 
    upX, upY, upZ);

  keys();
  drawObjects();
  
}

void drawObjects() {
  // Draw the sphere.
  pushMatrix();
  translate(width * 0.75, height / 2.0, -height / 1.5);
  rotateY(angle);
  shape(sphere);
  popMatrix();

  // Draw the eyebox.
  pushMatrix();
  translate(width * 0.25, height / 2.0, -height / 1.5);
  rotateX(angle);
  rotateY(angle);
  shape(cube);
  popMatrix();

  angle += 0.005;
}

void keys() {
  if (keyPressed) {
    if (y > 0
      && (key == 'w' || key == 'W' || keyCode == UP)) {
      y -= camSpeed;
      lookAtY = y;
    }
    if (x > -extents
      && (key == 'a' || key == 'A' || keyCode == LEFT)) {
      x -= camSpeed;
      lookAtX = x;
    }
    if (y < height - 10
      && (key == 's' || key == 'S' || keyCode == DOWN)) {
      y += camSpeed;
      lookAtY = y;
    }
    if (x < extents
      && (key == 'd' || key == 'D' || keyCode == RIGHT)) {
      x += camSpeed;
      lookAtX = x;
    }
    if (z > -extents
      && (key == 'q' || key == 'Q')) {
      if (orthographic) {
        orthoScale += 0.01;
      }
      z -= camSpeed;
      lookAtZ = z - viewDist;
    }
    if (z < extents
      && (key == 'e' || key == 'E')) {
      if (orthographic) {
        orthoScale -= 0.01;
      }
      z += camSpeed;
      lookAtZ = z - viewDist;
    }
  }
}