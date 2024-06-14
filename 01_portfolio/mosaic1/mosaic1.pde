float d = 50;
float l = 2*d/5;
int lines = 20;
float wdth;
float interval = d/10;
String h = "h", v = "v";
float step = 2*d;
float m;

void setup(){
  fullScreen();
  background(0);
  strokeWeight(1.2);
  smooth();
}

void draw(){
  m = map(mouseX, 0, width, 255 ,0);
  for(int i = 0; i <= width; i+=step){
    for(int j = 0; j <= height; j+=step){
      stroke(random(255),m,random(255));
      strip(h, i, j);
      strip(v, i, j);
    } 
  }
saveMe();
}

void strip(String type,float xOffset, float yOffset){
  for(int i = 1; i < lines; i++){
    if(i <= 5) wdth = (l / 5) * i; 
    if(i > 5 && i < 15) wdth = l; 
    if(i >= 15) wdth =(l / 5) * (lines % i); 
    if (type == "v") line(xOffset -wdth, yOffset + i * interval,xOffset + wdth, yOffset + i * interval);
    if (type == "h") line(xOffset + i * interval,yOffset -wdth,xOffset + i * interval,yOffset + wdth);
  }
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("mosaic1.png");
  }
}
