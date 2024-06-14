int l = 100;
int a = l / 2; 
int b = l / 5; 
int offset = l+l/8;
float x, y;
float xStep = 3*l;

void setup(){
  fullScreen();
  background(245);
  fill(#16161b);
  noLoop();
}

void draw(){
  //translate(width/2,height/2);
  for(int i = 0; i <width;i+= xStep){
    x = i;
    y = 500;
    cell(x,y);
  }

}

void cell(float x, float y){
  pushMatrix();
  translate(x,y);
  for(int i = 0; i< 3; i++){
    rotate(radians(120));
    tesela();
  }
  popMatrix();
}

void tesela(){
  float[] posX = {0, 
  -a, 
  a*(0.30-1), -a*(1-0.9), a*(0.40-1), 
  a*(0.60-1), -a*(1-0.95), a*(0.70-1), 

  0, 
  a*(1-0.30), a*(1-0.9), a*(1-0.40), 
  a*(1-0.60), a*(1-0.95), a*(1-0.70), 
  a};

  float[] posY = {l-offset, 
  0-offset, 
  -0.30*b-offset, -l*0.95-offset, -0.40*b-offset,
  -0.60*b-offset, -l*0.85-offset, -0.70*b-offset,           

  -b-offset,
  -0.30*b-offset, -l*0.95-offset, -0.40*b-offset,
  -0.60*b-offset, -l*0.85-offset, -0.70*b-offset,
  0-offset};

  beginShape(); // clockwise from the bottom vertex
  for(int i = 0; i < posX.length; i++){
    vertex(posX[i],posY[i]); 
  }
  endShape(CLOSE);
}
