float dia = 400;
float selector;
// float angle; // for rotation

void setup(){
  fullScreen();
  stroke(255);
  strokeWeight(2);
  strokeCap(CORNER);
  //surface.setLocation(987,70);
}

void draw(){
  background(#023047);
  translate(width/2,height/2);
  //rotate(-angle);  // if we want a rotation of the design
  selector = map(mouseX, 0, width/2, 5, 36);
  for(int a = 0; a<360;a+=selector){
    pushMatrix();
    rotate(radians(a));
  for(int r= 0; r<180; r+=8){
  line(dia*sin(radians(r)),dia*cos(radians(r)),dia*sin(radians(-r)),dia*cos(radians(-r)));
  }
  popMatrix();
  }

  //angle +=TWO_PI/120; // for rotation effect

  noFill();
  ellipse(0,0,dia*2,dia*2);
  keepMe();
}

void keepMe(){
  if(mousePressed){
    println("saved");
    String name = "./data/linesOfSymmetry_"+str(int(selector))+".png";
    save(name);
  }
}
