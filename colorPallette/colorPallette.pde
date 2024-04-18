int[] color0 = {35,24,16};
color variant;
float squareSide;

void setup(){

  size(600,600);
  background(235);
  noLoop();
  //modeRect(center);
  squareSide = 35;
}

void draw(){
  int j =1;
  while(j < height){
    for(int i = 1; i < width; i+=squareSide){
      fill(color(color0[0]+i,color0[1]+j,color0[2]+i+j));
      rect(i,j,squareSide,squareSide);
    }

    j+=squareSide;
  }
}
