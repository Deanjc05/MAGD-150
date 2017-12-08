float r, g, b;
int count=0;
object1 OBJ1;
object2 OBJ2;

void setup(){
  size(1000,800);
  OBJ1 = new object1();
  OBJ2 = new object2();
}

void draw(){

  frameRate(15); 
  //call object 1 functions
  OBJ1.display();
  OBJ1.update();
  count++;
  
  //call object 2 funtions
  OBJ2.display();
  OBJ2.update();
  
 r = random(1,255);
 g = random(1,255);
 b = random(1,255);
 
 //statement that refreshes background
 //when 150 object 1s spawn 
  if (count == 150){
   background(r,g,b);
   
    count = 0;
  }
}