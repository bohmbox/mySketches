float x=0;
float y=0;

void setup(){
  size(700,700);
  background(30);
  stroke(255);
  strokeWeight(8);
}


void draw(){
  point(x,y);
  x++;
  translate(0,30);
  point(x,y);
  if (x >= 30 && x < 60){
    y++;
  }

  if (x >= 60 && x < 90){
    y--;
  }
}
