color pink = color(245, 127, 179);
void setup(){
  size(1000,1200);
  background(0);
  noFill();
  stroke(pink);
}

void draw(){
  strokeWeight(random(0.5,0.8));
  float radius = random(1,10);
  ellipse(random(100,900),random(120,1080),radius,radius);

  if(mousePressed){
    save("bubbles.png");
  }
}
