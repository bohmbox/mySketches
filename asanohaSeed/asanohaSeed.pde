color paper = color(239, 239, 239);
float radius = 150;
float diagonal = radius * sqrt(3)/2;
float translation = diagonal/3;
int offsetMargin = 30;
float[] pX1 = new float[6];
float[] pY1 = new float[6];
float[] pX2 = new float[6];
float[] pY2 = new float[6];

void setup(){
  size(700,700);
  background(255);

  fill(paper);
  strokeWeight(1);
  rectMode(CORNER);
  rect(offsetMargin,offsetMargin,width-2*offsetMargin,height-2*offsetMargin);

  noFill();
  
  //origin
  translate(width/2,height/2);
  strokeWeight(3);
  point(0,0);
  strokeWeight(1);

  ellipse(0,0,radius,radius);
  //petals
  for(int i=30;i<=360;i+=60){
  ellipse(radius/2*cos(radians(i)),radius/2*sin(radians(i)),radius,radius);
  }
  strokeWeight(2);
  for(int i=0;i<6;i++){
  pX1[i] = radius/2*cos(radians(60*i+30));
  pY1[i] = radius/2*sin(radians(60*i+30));
  pX2[i] = diagonal*cos(radians(60*i+60));
  pY2[i] = diagonal*sin(radians(60*i+60));
  ellipse(pX2[i],pY2[i],radius,radius);
  }
  save("asanohaSeed.png");
}


