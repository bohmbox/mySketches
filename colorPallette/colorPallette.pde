float squareSide;

void setup(){
  fullScreen();
  background(235);
  noLoop();
  //modeRect(center);
  squareSide = 35;
}

void draw(){
  int j =1;
  while(j < height){
    for(int i = 1; i < width; i+=squareSide){
      fill(map(i,0,width,0,255),map(j,0,height,0,255),map(mouseX,0,width,255,0));
      rect(i,j,squareSide,squareSide);
    }

    j+=squareSide;
  }
  save("colorPallete.png");
}
