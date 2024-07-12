float hSize = 390, vSize = 490;
void setup(){
  size(800,800);
  background(255);
  strokeWeight(20);
  strokeCap(ROUND);
  strokeJoin(ROUND);
}

void draw(){
  translate(width/2,height/2);
  chip();
}

void chip(){
  beginShape();
  vertex(-hSize/2, -vSize/2);
  vertex(hSize/2, -vSize/2);
  vertex(hSize/2, vSize/2);
  vertex(-hSize/2, vSize/2);
  endShape(CLOSE);

  line(hSize/2 - 30, -1.5*vSize/5, hSize/2 + 45, -1.5*vSize/5);
  line(hSize/2 - 30, -0.5*vSize/5, hSize/2 + 45, -0.5*vSize/5);
  line(hSize/2 - 30,  0.5*vSize/5, hSize/2 + 45,  0.5*vSize/5);
  line(hSize/2 - 30,  1.5*vSize/5, hSize/2 + 45,  1.5*vSize/5);

  line(-hSize/2 + 30, -1.5*vSize/5, -hSize/2 - 45, -1.5*vSize/5);
  line(-hSize/2 + 30, -0.5*vSize/5, -hSize/2 - 45, -0.5*vSize/5);
  line(-hSize/2 + 30,  0.5*vSize/5, -hSize/2 - 45,  0.5*vSize/5);
  line(-hSize/2 + 30,  1.5*vSize/5, -hSize/2 - 45,  1.5*vSize/5);

  arc(0,-vSize/2 + 10, hSize/3, hSize/3, 0, PI);
  ellipse(-hSize/3 +20, -vSize/3 + 10, 50, 50);
}
