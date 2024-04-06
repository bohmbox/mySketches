float cx,cy;
float px,py;
// polygon parameters
int sides = 6;
float[] ptsX = new float[sides];
float[] ptsY = new float[sides];
float r = 200;
float angle = 360/sides;
float rotator = angle/2;

void setup(){
  //fullScreen();
  size(600,600);
  background(122,11,86);
  cx = width/2;
  cy = height/2;
  // center figure
  translate(cx,cy);

  // create edge points
  for (int i = 0; i< sides; i++){
    px = r*cos(radians(i*angle-rotator));
    py = r*sin(radians(i*angle-rotator));
    ptsX[i] = px;
    ptsY[i] = py;
    point(ptsX[i],ptsY[i]);
  }
  
  // draw lines between points
  stroke(255);
  strokeWeight(3);
  drawShape();
  save("polygons.png");
}

void drawShape(){
  for (int i = 0; i< sides; i++){
    if (sides-1 == i){
      line(ptsX[i],ptsY[i],ptsX[0],ptsY[0]);
    }
    else{
      line(ptsX[i],ptsY[i],ptsX[i+1],ptsY[i+1]);
    }
  }
}
