float t = 0;

Arc a = new Arc();

void setup(){
  size(700,700);
  noFill();
  stroke(0);
  //strokeWeight(5);
  smooth();
  a.create();
}

void draw(){
  //background(#f1eeee);
  a.move();
  a.drawSemiCircle();
}
