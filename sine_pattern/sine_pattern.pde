//This is my first sketch
float y = 0;
float angle0 = 0;
float amplitude = 5;
float waveGap = 14;
float frequencyShift = 2.7;

void setup(){
size(900,900);
background(255);
noFill();
strokeWeight(3);
}

void draw(){
  // draw from the top to the bottom
  if (y < height){
    float Y = 0;
    for (int i=0; i<=width; i++){
      Y = y + amplitude * sin(radians(angle0));
      point(i,Y);
      angle0 += frequencyShift;
    }
    y +=waveGap;
  }
  save("waves_and_moire.png");
}

