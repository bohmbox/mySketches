float x,y,x0,y0,xf,yf;
float d = 60; // longitudinal distance betweeen elements
float l = 35; // length of element

void setup(){
  size(700,700);
  background(#16161b);
  stroke(255);
  strokeWeight(8);
  strokeCap(ROUND);
  smooth();
  //noLoop();

}

void draw(){
  tangle();
  saveMe();
}

void tangle(){
  for(int j = 0; j < height/d; j++){
    for(int i = 0; i < width/d; i++){
      x = i*d;
      y = 2*d* j + pow(-1,i)*d/2;
      cros(x,y);
    }
  }
}

void cros(float xOffset, float yOffset){
  x0 = xOffset - l/2;
  y0 = yOffset;
  xf = xOffset + l/2;
  yf = yOffset;
  line(x0,y0,xf,yf);

  x0 = xOffset;
  y0 = yOffset - l/2;
  xf = xOffset;
  yf = yOffset + l/2;
  line(x0,y0,xf,yf);
}

void saveMe(){
  if(mousePressed){
    print("saved");
    save("zentangle1.png");
  }
}
