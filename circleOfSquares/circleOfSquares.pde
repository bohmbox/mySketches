// color pallette
color fondo = color(255, 226, 64);
color blanco  = color(255, 255, 255);
color cafe1 = color(76, 65, 0);
color cafe2 = color(117, 98, 22);
color amarillo1 = color(185, 158, 46);

// gradient
float subdivisions = 5;
float r, max_r;
float angle;
float aperture;
float rectSize;

void setup(){
  size(600,600);
  rectMode(CENTER);
  noStroke();
  frameRate(3);
  
  max_r = width/2 -100;
  float aperture =radians(360);
}


void draw(){
  background(fondo);
  translate(width/2,height/2);
      r = random(2,max_r);
      println(r);
      angle = random(1,aperture);
      rectSize = random(60);
      rect(r*cos(angle),r*sin(angle),rectSize,rectSize);
}
