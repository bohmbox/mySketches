int r = 150;
int fullRound = 360;
int steps = 56;
float angle = fullRound / steps;
int offset;
float x0,y0,xf,yf;

void setup(){
  size(400,400);
  strokeWeight(4);
  stroke(255);
  frameRate(3);

}

void draw(){
  background(#1b1616);
  offset = 40;
  txt("Radiolaria", width/2,height/2);
  cir();
}

void cir(){
  translate(width/2,height/2);
  for(int i = 0; i < fullRound; i+=angle){
    x0 = r * cos(radians(i));
    y0 = r * sin(radians(i));
    xf = (r + offset) * cos(radians(i+ 10));
    yf = (r + offset) * sin(radians(i+10));
    line(x0, y0, xf, yf);
  }
}
void txt(String s, float xPos, float yPos){
  PFont myFont = createFont("Ubuntu",26);
  textAlign(CENTER);
  textFont(myFont);
  text(s, xPos, yPos);

}
