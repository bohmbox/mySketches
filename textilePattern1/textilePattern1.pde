void setup(){
  fullScreen();
  stroke(#16161b);
  strokeWeight(3);
  noLoop();
}

void draw(){
  for(int i = 0; i<=3000;i++){
    float x = random(width);
    float y = random(height);
    float p = random(1); // probability
    line(x,y, p);
  }
  save("textilePattern1.png");
}
void line(float x, float y, float p){
  float l = random(55,90);
  if(p <= 0.5){
    line(x,y-l,x,y+l);
  }else{
    line(x-l,y,x+l,y);
  }
}
