int w = 60;
int h = 60;
int pts = 6;

Polygon p1 = new Polygon();

void setup(){
  size(700,700);
  
  p1.setW(w); 
  p1.setH(h); 
  p1.setPts(pts);
}
void draw(){
  background(255);
  p1.setX(mouseX);
  p1.setY(mouseY);
  p1.create();

}

