float x, y, t=0;
float outerR = 100, unitR = 8, r;
color blueish = #416073, whiteish = #EFE9D7; 

void setup(){
  fullScreen();
  background(whiteish);
  smooth();
  noStroke();
  populate();
}

void draw(){
  saveMe();
}
void populate(){
  float yStep = outerR;
  for(int j = 0; j <= height; j+=yStep){
    row(j);
  }
}

void row(float y){
  float xStep = outerR;
  float ySubStep = outerR/3;
  for(int i = 0; i <= width; i+=2*xStep){
    float posX = i;
    float posY = y;
    wavelet(posX,posY);
  }
  for(int i = 0; i <= width; i+=2*xStep){
    float posX = i - xStep;
    float posY = y + ySubStep;
    wavelet(posX,posY);
  }
}

void wavelet(float x, float y){
  fill(whiteish);
  arc(x, y, 2*outerR, 2*outerR, PI, 2*PI);
  fill(blueish);
  for(int rStep = 0; rStep <= outerR; rStep+=outerR/7){
    for(float i = PI; i <= 2*PI; i+=PI/10){
      float posX = x + (outerR-rStep)*cos(i);
      float posY = y + (outerR-rStep)*sin(i);
      ellipse(posX,posY,unitR,unitR);
    }
  }
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("japanesePattern3.png");
  }
}
