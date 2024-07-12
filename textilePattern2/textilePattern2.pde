float l = 50;
float ll = 150;

void setup(){
  size(500,500);
  background(#16161b);
  stroke(255);
  myRect(100,100);
}

void myRect(float x, float y){
  beginShape();
  vertex();
  vertex();
  vertex();
  vertex();
  endShape(CLOSE);

}
