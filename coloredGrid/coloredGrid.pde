int step = 70;

void setup(){
  fullScreen();
  //size(1800,800);
  background(0);
  stroke(255);
  strokeWeight(2);
  strokeCap(ROUND);
  noFill();
  smooth();
}

void draw(){
translate(step,step);
  for (int j= 0; j< (height-2*step); j+=step){
    for (int i= 0; i< (width-1.5*step); i+=step){
      stroke(map(mouseX,width,0,0.25*255,255),map(mouseY,width,0,0.25*255,255),map(mouseY,width,0,0.25*255,255));
      point(i,j);
    }
  }
  if(mousePressed){
    println("saved");
    save("coloredGrid.png");
  }
}
