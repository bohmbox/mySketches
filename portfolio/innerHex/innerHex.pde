color bckgrnd = #09102C;
color hexColor = #E6FAFF;
float angleRot = 30;
float r = 200;
float xStep,yStep,xJump, yJump;
void setup(){
  //size(800,800);
  fullScreen();
  background(bckgrnd);
  stroke(hexColor);
  strokeWeight(6);
  noFill();
  noLoop();
}

void draw(){
  float d = r * cos(radians(30));
  float xStep = d;
  float ySubStep1 = 2 * d * sin(radians(60));
  float ySubStep2 = 2 * r * (1 + sin(radians(30)));
  for(int j = 0; j <= height / ySubStep2; j++){
    for(int i = 0; i <= width / xStep; i++){
      float xPos = i * xStep;
      float yPos = (i % 2) * ySubStep1 + j * ySubStep2; 
      hexagon(xPos, yPos);
    }
  }
}

void hexagon(float xOffset, float yOffset){
  float innerR = r;
  float limit = 3*innerR/5;
  float rStep = innerR/5;
  while(innerR >= limit){
    beginShape();
    for(int i = 0; i <= 5;i++){
      float xH = xOffset + innerR*cos(radians(i*60 + angleRot)); 
      float yH = yOffset + innerR*sin(radians(i*60 + angleRot));
      vertex(xH,yH);
    }
    endShape(CLOSE);
    innerR -= rStep;
  }
}
