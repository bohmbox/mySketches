float angle = 60;
int step = 15;

void setup(){
  size(700,700);
  background(255);
  stroke(0);
  strokeWeight(7);
  strokeJoin(MITER);
  fill(0);
  for (int j= 0; j<=height;j+=step){
    line(0,j,width*cos(radians(30)),j+height*sin(radians(30)));
    }
}
