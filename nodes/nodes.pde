int d = 10;
int end = 10000;
float rad,angle, angle1,angle2;
float[] x = new float[end];
float[] y = new float[end];
float r,g,b;

void setup(){
  //size(500,500);
  fullScreen();
  background(255);
  frameRate(2);
  stroke(0);
  strokeWeight(1.5);
  smooth();
  //noLoop();

}

void draw(){
  getVectorPositions();
  for(int i = 1; i<end; i++){
    getFillValues();
    line(x[i-1],y[i-1],x[i],y[i]);
    ellipse(x[i-1],y[i-1],d,d);
    ellipse(x[i],y[i],d,d);
  }
}

void getVectorPositions(){
  x[0] = random(width/3,2*width/3);
  y[0] = random(height/3,2*height/3);
  for(int i = 1; i<end; i++){
    if(x[i]>= width){
      rad =random(30);
      angle +=cos(radians(45));
      x[i] = x[i-1] + rad*angle;
    }
    if(y[i] >= height){
      rad =random(10);
      angle +=cos(radians(45));
      y[i] = y[i-1] + rad*angle;
    }
    else{
      rad =random(30);
      angle1 =cos(radians(random(360)));
      angle2 =sin(radians(random(360)));
    x[i] = x[i-1] + rad*angle1;
    y[i] = y[i-1] + rad*angle2;
    }
  }
}

void getFillValues(){
  r = map(mouseX,0,width,0,255);
  g = map(mouseY,0,height,0,255);
  b = map(mouseX,width,0,0,255);
  fill(r,g,b);
}
