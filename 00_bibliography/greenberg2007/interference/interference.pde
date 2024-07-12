// this sketch should be called Interference and moiré patterns. By Ira Greenberg, 2005

float interval;
float spacer;

// change me
float angle = 0;
float amplitude = 0.05;
float waveGap = 10;
float frequency = 0.1;
float ringGrowthRate = 0.5;
boolean isInactive = true;

void setup(){
  size(2800,800);
  interval = width * 0.03;
  spacer = interval;
  noFill();
  frameRate(30);
}

void draw(){
  background(0);
  stroke(255);
  float py = 0;
  /* This nested for loop fills the frame with a wave pattern. Some of its properties are controlled in part by the mouse position. */
  for(int i=0; i<height;i+=waveGap){
    for(int j =0; j<width;j++){
      py = i + sin(radians(angle))*mouseY*amplitude;
      point(j,py);
      angle+=mouseX*frequency;
    }
  }

  // draw concentric ring pattern
  for(int i=0; i<width/2*spacer/interval;i+=spacer){
    ellipse(mouseX,mouseY,10+i,10+i);
  }

  // describe mouse press behaviour
  if(mousePressed){
    angle = 0;
    isInactive = false;
    // grow rings
    if(spacer < interval*2){
      spacer += ringGrowthRate;
      println("clicked");
    }
  }
}

// allows ring to shrink
void mouseReleased(){
  isInactive = true;
}
