float waveGap = 15.0;
float angle = 2.0;

void setup(){
  size(800,800);
  strokeWeight(3); 
  frameRate(10);
}

void draw(){
  background(255);
  fill(0);
  ellipse(mouseX,mouseY,10,10);

  float amplitude = mouseY/70.0;
  float phase = mouseX/30.0;

  for (int j = 0; j <= height; j+=waveGap){
    float y = 0;
    for(int i = 0; i <=width; i++){
      float x = i; 
      y = j + amplitude * sin(radians(angle));
      point(x,y);
      angle+=phase;
    }
  }
}

void saveMe(){
  if (mousePressed == true){
    float angle = 0;
    save("moirePatterns.png");
  }
}
