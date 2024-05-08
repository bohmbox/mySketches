float x,y, x0, y0;
float r = 30;
float d = 35, D = 120;
float posX, posY, angle;

void setup(){
  //fullScreen();
  size(700,700);
  x0 = width/2;
  y0 = height/2;

  background(0);
  stroke(255);
  strokeWeight(8);
  fill(255);
  smooth();
}

void draw(){
  center();
  orient();
  eye();
}

void center(){
  translate(width/2,height/2);
}

void orient(){
  posX = mouseX - x0;
  posY = mouseY - y0;
  angle = atan2(posY,posX);
  fill(255);
  point(posX,posY);
  println(degrees(angle));
}

void eye(){
  rotate(angle);
  fill(#ffffff);
  ellipse(0,0,D,D);
  fill(#ff0000);
  ellipse(30,0,d,d);
}
