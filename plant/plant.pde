color amarelo = color(180, 153, 44);//background
color rosa0 = color(207, 197, 203);//background
color rosa1 = color(199, 158, 169);//background
color grayPot = color(147, 135, 134);//pot
color blackPot = color(17, 13, 13);//pot
color plantVein1 = color(76, 113, 110);//plant vein 1
color plantVein2 = color(103, 172, 136);//plant vein 2
color plantVein3 = color(68, 91, 82);//plant vein 3
color leaf1 = color(12, 94, 82);//leaf 1
color leaf2 = color(14, 88, 57);//leaf 2
color leaf3 = color(20, 52, 43);//leaf 3

void setup(){
  size(600,970);
  fill(amarelo);
  beginShape();
  vertex(0,5*height/6);
  vertex(0,height);
  vertex(width, height);
  vertex(width,4*height/6);
  endShape();

  fill(rosa0);
  beginShape();
  vertex(0,2*height/6);
  vertex(0,5*height/6);
  vertex(2*width/3, 5*height/7+4);
  //vertex(width,4*height/6);
  endShape();

  fill(rosa1);
  beginShape();
  vertex(0,0);
  vertex(0,2*height/6);
  vertex(2*width/3, 5*height/7+4);
  vertex(width,4*height/6);
  vertex(width,0);
  //vertex(width,4*height/6);
  endShape();

  fill(grayPot);
  beginShape();
  vertex(2*width/7,4*height/6);
  vertex(2*width/7+13,4*height/6+50);
  vertex(2*width/7,height);
  vertex(3*width/4,height);
  vertex(3*width/4,4*height/6 -4);
  endShape();
  line(2*width/7,5*height/6,3*width/4,4*height/6+random(-5,5));
}
