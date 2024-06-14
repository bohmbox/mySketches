float waveGap = 15.0;
float angle = 2.0;
float amplitude, phase; 

void setup(){
  size(800,800);
  strokeWeight(3); 
  frameRate(10);
}

void draw(){
  background(255);
  fill(0);
  ellipse(mouseX,mouseY,10,10);

  amplitude = mouseY/70.0;
  phase = mouseX/30.0;

  for (int j = 0; j <= height; j+=waveGap){
    float y = 0;
    for(int i = 0; i <=width; i++){
      float x = i; 
      y = j + amplitude * sin(radians(angle));
      point(x,y);
      angle+=phase;
    }
  }
  saveMe();
}

void saveMe(){
  if (mousePressed){
    float angle = 0;
    String title = "moirePatterns_ampl:" + amplitude +"_phase: " + phase+ ".png";
    println(title);
    save(title);
  }
}
