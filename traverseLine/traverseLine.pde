float x;
float y;
float radius;
float angle;

void setup(){
  size(1700,1700);
  //fullScreen();
  background(0);
  stroke(255);
  strokeWeight(4);
}

void draw(){
  translate(width/2, height/2);
  radius = int(random(800));
  x = radius*cos(radians(angle));
  y = radius*sin(radians(-angle));
  triangle(x,y);
  angle+=2;
}

void triangle(x,y){
beginShape();
vertex(0,-0,x,y);
vertex();
vertex();
endShape(CLOSE);
}
