void setup(){
  fullScreen();
  fill(0);
  //noStroke();
  stroke(255);
  strokeWeight(4);
}

void draw(){
  background(#16161b);
  float scalar = map(mouseX, 0, width, 1, 1200);
  float radius = 1.0;
  for(int deg = 0; deg < 1600 * 360;deg+=scalar){
    float angle = radians(deg);
    float x = 0.618*width + (radius * cos(angle));
    float y = 0.5*0.618*height + (radius * sin(angle));
    stroke(random(255),random(255), random(255));
    ellipse(x,y,4,4);
    radius +=5.34;
  }
}
