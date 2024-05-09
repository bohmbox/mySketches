int shapes = 3;
int padding = 150;

float w;
float h;
float colSpan;
float x;
float y;

void setup(){

  size(1000,700);
  background(#EBF5F6);
  //background(#7A73C7);
  //background(#CAF6FA);
  //background(#659BCE);
  strokeWeight(7);
  stroke(0);
  arc(x,y,w/2,h/2,PI,PI/2);
}

void draw(){
  w = (width - padding)/shapes;
  h = w;
  colSpan = (width - shapes*w)/(shapes+1);
  x = colSpan;
  y = height/2;
  for(int i = 0, j= 0;i<shapes;i++){
  point(x,y);
    //circles(x,y,w,h);
    x+=w+colSpan;
  }
}

void circles(float x, float y, float w, float h){
  arc(x,y,w,h,PI,PI/2);
}
