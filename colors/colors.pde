// sketch creado por Daniel Shiffman(2015) en su libro de Learning processing. p. 62.
float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup(){
  size(500,500);
  background(255);
}

void draw(){
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  x = random(500);
  y = random(500);
  diam = random(20,60);


  // use values to draw an ellipse
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,diam,diam);
  save("wall_of_colors.png");
}
