int thick = 45;
int tall = 15;
int sep, separators = 12;
float step;
float r,g,b,c;

void setup(){
  fullScreen();
  background(#ffffff);
  stroke(0);
  step = width/separators;
  discs();
  //translate(width/2,height/2);
  //fors();
}

void draw(){
  for(int i = 1; i< separators; i++)
    lines(step * i);
}

void lines(float x){
  strokeWeight(4);
  line(x, 0, x, height);
  line(x + 60, 0, x + 60, height);
}

void discs(){
  stroke(#16161b);
  strokeWeight(2);
  for(int i = 0; i<263;i+=13){
    fills();
    rect(i,60,10,239);
  }
}

void fills(){
  sep = int(random(8));
  if(sep <= 1){
    c = random(255);
    fill(c);
  }else{
    r = random(255);
    g = random(255);
    b = random(255);
    fill(r,g,b);
  }
}
