void setup(){
  background(123,49,65);
  size(1000,1000);
  //frameRate(4);
}

int numNodes = 3;
float angle;
float r = 400;

void draw(){
  background(123,49,65);
  annotation();
  translate(width/2,height/2);
  ellipse(0,0,2*r,2*r);
  numNodes();
  for (int i = 0; i <= numNodes; i++){
    float x0 = nodeX(i);
    float y0 = nodeY(i);
    for (int j = 1; j<= numNodes; j++){
      float xf = next_nodeX(i,j);
      float yf = next_nodeY(i,j);
      line(x0,y0,xf,yf);
    }
  }
  saveMe();
}

float nodeX(int i){
  return r* cos(radians(i*angle));
}
float nodeY(int i){
  return r* sin(radians(i*angle));
}
float next_nodeX(int i,int j){
  return r*cos(radians((i+j)*angle));
}
float next_nodeY(int i, int j){
  return r*sin(radians((i+j)*angle));
}

void numNodes(){
  if(keyPressed == true){
    if(key == '+'){
        numNodes++;
    }
    if(key == '-'){
        numNodes--;
    }
  }
  angle = 360.0 / numNodes;
}

void annotation(){
  PFont myFont = new PFont();
  myFont = createFont("Ubuntu",22);
  textFont(myFont);
  textAlign(RIGHT);
  text("Click '+' or '-' to increase or reduce the number of nodes", width - 50, 35);
  text("Mouse click to save the drawing", width - 50, 60);
}

void saveMe(){
  if(mousePressed){
    print("saved");
    String n = "data/circleNetwork_"+ numNodes + ".png";
    save(n);
  }
}
