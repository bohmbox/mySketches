// color pallette
color fondo = color(255, 226, 64);
color blanco  = color(255, 255, 255);
color cafe1 = color(76, 65, 0);
color cafe2 = color(117, 98, 22);
color amarillo1 = color(185, 158, 46);

// gradient
float subdivisions = 5;
int r, max_r;
float angle;
float aperture;
float rectSize;

void setup(){
  fullScreen();
  //size(600,600);
  rectMode(CORNER);
  noStroke();
  //frameRate(3);
  background(blanco);
}


void draw(){
  translate(width/2,height/2);
  max_r = width/2 -50;
  r = int(random(10,max_r));
  colorMe(r);
  angle = random(radians(1),radians(360));
  rectSize = r/20;
  rotate(angle);
  rect(r*cos(angle),r*sin(angle),rectSize,rectSize);
}

void colorMe(int r){
  if(r <200){
    fill(blanco);
  }
  if(r>200 && r <400){
    fill(amarillo1);
  }
  if(r>400 && r <600){
    fill(cafe1);
  }
  if(r>700 && r < 900){
    fill(cafe2);
  }
}
       
