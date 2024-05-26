float x0,y0,xf,yf;
float sideLength = 50;
float miniSideLength = sideLength/2;
float xPadding = 25;
float yPadding = 40;
float xStep = sideLength + 2 * xPadding;
float yStep = sideLength + yPadding;

void setup(){
  size(800,800);
  background(225);

  stroke(0);
  strokeWeight(5);

  rectMode(CENTER);

  noLoop();
}

void draw(){
  for(int j = 0; j < height; j+=yStep){
    for(int i = 0; i < width; i +=xStep){
      cell(i,j);
    }
  }
}

void cell(int xOffset, int yOffset){
  x0 = xOffset + xPadding + (sideLength)/2;
  y0 = yOffset + yPadding + (sideLength)/2;
  rect(x0, y0, sideLength, sideLength);
  rect(x0 + xStep/2, y0, miniSideLength, miniSideLength);
}
