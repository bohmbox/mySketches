//polygon parameters
int vertices = 6;
int  d0 = 300;
float r0 = d0/2;
int index;
float multiplier;
int totalSteps;

//traverse iteration parameters
float x= 0;
float y= 0;
float angle0 = (-30);
float angle = angle0;

void setup(){
  size(1900,1900);
  //background(color(89, 169, 106));
  stroke(0);
  strokeWeight(3);
  noFill();
  //noLoop();
  frameRate(2);
}

void draw(){
  background(color(89, 169, 106));
  translate(width/2,height/2);

  for(int index = 1; index<10; index++){
  multiplier = index * r0;
  totalSteps = vertices*index;
  iterator(index); //this is what draws the iteration at index "index" 
  }
  if(mousePressed){
    print("saved");
    save("asanohaSeed.png");

  }
}

void iterator(int index){
  stroke(color(random(255), random(255),random(255)));
  float x = 0;
  float y = -multiplier;
  for(int i= 0; i<totalSteps;i++){
    for(int j = 1; j<=index;j++){
      angle = setAngle(i,j, index);
      x +=r0*cos(radians(angle));
      y +=r0*sin(radians(angle));
      ellipse(x,y,d0,d0);
    }
  }
}

float setAngle(int i,int j,int index){
  if(j%index == 1 || index==1){ 
    angle+=60;
  }if(angle==330){
    angle = angle0;
  }
  return angle;
}
