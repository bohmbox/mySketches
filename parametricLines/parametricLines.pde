float x,y;

void setup(){
  size(900,900);
  translate(width/2,height/2);
  background(color(0, 71, 108));
}

float t = 0;
void draw(){
  stroke(255);
  strokeWeight(5);
  point(x(t),y(t));
  t++;
  if(mousePressed){
    save("parametricLines.png");
  }
}


float x(float t){
  x = 250*sin(t/23) + width/2;
  return x;
}

float y(float t){
  y = 250*cos(t/11) + height/2;
  return y;
}

