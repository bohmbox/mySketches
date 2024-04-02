float interval;
float spacer;

void setup(){
  size(800,800);
  interval = width*.03;
  spacer = interval;
}

void draw(){
  background(0);
  float pointX = mouseX;
  float pointY = mouseY;

  noFill();
  stroke(255);
for (int i= 0; i <height/2*spacer/interval; i+=spacer){

  ellipse(pointX, pointY, 40+i,40+i);
  i++;
  }

}
