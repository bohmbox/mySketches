int offsetX = 10;
int offsetY = 10;

void setup() {
  size(800,800);
  background(0);
  float[] origin = {width/2, height/2};

  // axis lines
  stroke(255);
  strokeWeight(3);

  // num of nodes along the line
  int nodesX = 30;
  int nodesY = 30;
  
  // x axis
  float x1 = offsetX;
  float y1 = origin[1];
  float x2 = width - offsetY;
  float y2 = origin[1];
  // y axis
  float x3 = origin[0];
  float y3 = offsetY;
  float x4 = origin[0];
  float y4 = height - offsetX;
  
  // render axis
  line(x1,y1,x2,y2);
  line(x3,y3,x4,y4);

  // steps
  float stepX = (x2 - x1)/nodesX;
  float stepY = (y3 - y4)/nodesY;
  print(stepX);

  for (int i = 0; i <= nodesY/2; i++){
    line(x3, y3 - i*stepY , origin[1] + i*stepX, origin[1]);
    line(x3, y3 - i*stepY , origin[1] - i*stepX, origin[1]);
    line(x1 + i*stepX, origin[1], origin[0], origin[1] - i*stepY);
    line(x2 - i*stepX, origin[1], origin[0], origin[1] - i*stepY);

  }
  save("geometricStar.png");
}

