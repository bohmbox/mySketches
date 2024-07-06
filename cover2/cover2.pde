color[] myColors = {#4A5D85,#DDA93A,#732037,#959394};
// myColors = {blueish, yellowish, redish, grayish}
int l = 60; // this parameter adjusts everything
float offset = l*(sqrt(2) + 1)/4;
float xStep = l + offset;
float yStep = xStep;

void setup(){
  fullScreen();
  background(myColors[3]);
  stroke(0);
  rectMode(CENTER);
}

void draw(){
  for(int j = 0; j < height/yStep; j++){
    for(int i = 0; i <= width/xStep; i++){
      cell(i*xStep,j*yStep);
    }
  }
  saveMe();
}

void cell(float x, float y){
  float smallSqr = l * 0.20;
  float mediumSqr = l * 0.60;
  float bigSqr = l;
  float diag = (l/2 - smallSqr/2)*sqrt(2);
  fill(myColors[0]);
  strokeWeight(4);
  myRect(x, y, bigSqr);
  fill(myColors[1]);
  strokeWeight(3);
  myRect(x, y, mediumSqr);
  fill(myColors[2]);
  strokeWeight(2);
  myRect(x - diag, y, smallSqr);
  fill(myColors[2]);
  myRect(x + diag, y, smallSqr);
}

void myRect(float x,float y,float side){
  beginShape();
  vertex(x, y - side/2 * sqrt(2));
  vertex(x + side/2 * sqrt(2), y);
  vertex(x, y +side/2 * sqrt(2));
  vertex(x - side/2 * sqrt(2), y);
  endShape(CLOSE);
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("cover2.png");
  }
}
