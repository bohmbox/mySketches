color pink = color(245, 127, 179);
float x0, y0;
int radius = int(random(5,10));
float vx;
float vy;
float t = 0;
int particles = 30;

void setup(){
  fullScreen();
  noFill();
  stroke(pink);
  frameRate(10);
}

void bubble(){
  strokeWeight(random(0.5,0.8));
  x0 = random(width);
  y0 = height;
  vx = 30*sin(radians(5*t));
  vy = 10;
  ellipse(x0 + vx,y0 - vy * t,radius,radius);
}

void draw(){
  background(0);
  bubble();
  t++;
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("bubbles.png");
  }
}
