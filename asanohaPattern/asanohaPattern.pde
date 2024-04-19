int sides = 6;
int radius = 50;
int angle120 = 120;
int angle60 = 60;
float px,py;
float[] ptsX = new float[sides];
float[] ptsY = new float[sides];

//net parameters
float d1 = radius*cos(radians(-30));

void setup(){
  size(1000,1000);
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();
}


void draw(){
  background(0);
  for(int j= 0; j<height/radius;j++){
    pushMatrix();
    for(int i=0;i<width/radius;i++){
      cell();
      translate(1.5*radius,pow(-1,i)*d1);
    }
    popMatrix();
    translate(0,sqrt(3)*radius);
  }
  if(mousePressed){
    save("asanoha2.png");
    print("saved");
  }
}

void cell(){
  polygon();
  triangule();
  radial();
}

void polygon(){
  beginShape();
  for(int i = 0; i< sides; i++){
    px = radius * cos(radians(i*angle60));
    py = radius * sin(radians(i*angle60));
    ptsX[i] = px;
    ptsY[i] = py;
    vertex(ptsX[i],ptsY[i]);
    if(i == (sides - 1)){
    vertex(ptsX[0],ptsY[0]);
    }
  }
  endShape();
}
void radial(){
  for(int i = 0; i< sides/2; i++){
    px = radius * cos(radians(i*angle120));
    py = radius * sin(radians(i*angle120));
    ptsX[i] = px;
    ptsY[i] = py;
    line(0,0,ptsX[i],ptsY[i]);
    }
}

void triangule(){
  beginShape();
  for(int i = 0; i< sides/2; i++){
    px = radius * cos(radians(i*angle120));
    py = radius * sin(radians(i*angle120));
    ptsX[i] = px;
    ptsY[i] = py;
    vertex(ptsX[i],ptsY[i]);
    if(i == (sides/2)-1){
    vertex(ptsX[0],ptsY[0]);
    }
  }
  endShape();
}
