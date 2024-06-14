float offset = 50; 
float l; 
float origX, origY;
void setup(){
  size(800,800);
  background(#16161b);

  stroke(#ff0012);
  strokeWeight(12);
  strokeCap(ROUND);
}

void draw(){
  origX = width/2;
  origY = height/2;
  translate(origX, origY);

  for(int angle = 0; angle<360; angle-=90){
    rotate(radians(angle));
    quadrant();
  }
}

void quadrant(){
  l = origX - offset;
  line(0, -l, 0, l);
  line(-l, 0, l, 0);
  line(0, 0, 0.16 * l, -0.16 * l);
  line(0.16 * l, -0.16 * l, 2 * 0.16 * l, -0.16 * l);
  line(0.16 * l, 0, 2 * 0.16 * l, -0.16 * l);
  line(2* 0.16 * l, -0.16 * l, 2*0.16*l, 0);
  line(0.16 * l, -0.16 * l, 0.16 * l, -2*0.16*l);
  line(0,-0.16*l,0.16*l,-2*0.16*l);
  line(0,-2*0.16*l,0.16*l,-2*0.16*l);
  line(0.5*l,-0.16*l,0.5*l,0);
}
