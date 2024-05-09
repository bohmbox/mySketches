int size = 70;

void setup(){
  //size(700,700);
  fullScreen();
  background(0);
  stroke(255);
  noFill();
  rectMode(CENTER);
}

void draw(){
  translate(size/2,size/2);
  for(int j=0;j<height;j+=80){
    for(int i= 0; i<width;i+=80){
      stroke(i,j,size);
      square(i,j,size);
    }
  }
}

void square(int x, int y, int size){
  for(int d= size;d>0;d-=10){
    rect(x,y,d,d);
  }
}
