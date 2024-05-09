float angle;
float angle0 = 0;
float anglef = angle0+PI;
float r = 200;
float t = 0;
float x0 = 300, y0 = 300, x, y; 
int u = 0, v= 1;
float vx = 10, vy = 10;

void setup(){
  fullScreen();
  //size(600, 600);
  background(255);
  stroke(0);
  strokeWeight(5);
  point(x0,y0);
  noFill();
}

void draw(){
  //background(255);
  switcher();
  t += 0.01;
}

void move(){

}

void switcher(){
  if(angle <= PI){
    aperture(u, v);
  }
  if(angle > PI){
    stroke(v * 255);
    strokeWeight(3 * v + 5);
    u++;
    v++;
    if (u == 2){ 
      u = 0;
    }if(v == 2){
      v = 0;
    }
    angle= 0;
  }
  angle += 0.01;
}

void aperture(int i,int j){
  x = x0 + (i) * r * cos(angle0 - angle) + (j) * r * cos(anglef - angle) + vx * t;
  y = y0 + (i) * r * sin(angle0 - angle) + (j) * r * sin(anglef - angle) + vy * t;
  point(x,y);
  x = x0 + (i) * r * cos(angle0 + angle) + (j) * r * cos(anglef + angle) + vx * t;
  y = y0 + (i) * r * sin(angle0 + angle) + (j) * r * sin(anglef + angle) + vx * t;
  point(x,y);
}
