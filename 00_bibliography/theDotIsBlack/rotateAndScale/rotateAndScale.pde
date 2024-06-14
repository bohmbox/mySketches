float angle;
void setup(){

  size(980,1000);
  surface.setLocation(957,0);
  fill(#ACCCC9); 
  noStroke();
  strokeWeight(6);
  frameRate(7);
}


void draw(){
  background(#24272B);

  float x = width;
  float dia = 50;
  int num = 100;

  translate(width/2,height/2);
  for(float a=0;a<360; a+=45){
    rotate(radians(a));
    pushMatrix();
    for(int i=0; i<num;i++){

      rotate(radians(angle));
      scale(0.95);
      ellipse(x,0,dia,dia);
    }
    popMatrix();
  }
    angle+=0.1;

  for(float a=0;a<360; a+=45){
    rotate(radians(a));
    pushMatrix();
    for(int i=0; i<num;i++){

      rotate(-radians(angle));
      scale(0.95);
      ellipse(x,0,dia,dia);
    }
    popMatrix();
  }
    angle+=0.1;
    if(mousePressed){

      save("rotateAndScale.png");
    }
}
