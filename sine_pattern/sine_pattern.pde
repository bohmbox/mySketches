//This is my first sketch
color blue = color(40, 75, 99);
float y = -6;
float angle0 = 10;
float amplitude = 5;
float waveGap = 15;
float frequencyShift = 7;

void setup(){
size(390,140);
background(blue);
stroke(255);
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

