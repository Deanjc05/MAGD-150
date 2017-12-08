clockClass clock;
FourSeasons seasons;

void setup(){
  size(640,360);    
  clock = new clockClass();
  seasons = new FourSeasons();
}

void draw(){
  background(255);
  //four seasons
  seasons.variableBank();
  seasons.spring();
  seasons.summer();
  seasons.fall();
  seasons.winter();
  //clock face
  clock.clockFace();
  //clock hands
  clock.minuteHand();
  clock.hourHand();
  
}