float x,y;
float t = 0;

void setup(){
  size(900,900);
  translate(width/2,height/2);
  background(color(0, 71, 108));
}

void draw(){
  stroke(255);
  strokeWeight(5);
  point(x(t),y(t));
  saveMe();
  t++;
}


float x(float t){
  x = 250*sin(t/23) + width/2;
  return x;
}

float y(float t){
  y = 250*cos(t/11) + height/2;
  return y;
}

void saveMe(){
  if(mousePressed){
    print("saved");
    save("parametricLines.png");
  }
}
