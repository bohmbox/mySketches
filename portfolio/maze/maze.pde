float xStep;
float yStep;

void setup(){
  fullScreen();
  //size(800,1200);
  background(0);
  stroke(255);
  noFill();

}

void draw(){
  background(0);
  xStep = map(mouseX,0,width,100,10);
  yStep = map(mouseY,0,height,100,10);
  beginShape();
  for(int i = 0; i<width/(2*xStep);i++){
    vertex(width - i*xStep,height-i*yStep);
    vertex(width - i*xStep,i*yStep);
    vertex(i*xStep,i*yStep);
    vertex(i*xStep,height-(i+1)*yStep);
    //vertex(width-i*xStep,height-(i+1)*yStep);
    //vertex((i+1)*xStep,(i+1)*yStep);
  }
  endShape();

  saveMe();
}

void saveMe(){
  if(mousePressed){
    println("saved");
    String name = "maze_x"+str(xStep)+"-y"+str(yStep)+".png";
    save(name);
  }
}
