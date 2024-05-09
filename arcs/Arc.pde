class Arc{

  float x0,y0;
  float x,y;
  float vx,vy;
  float angle;
  float angle0 = 0;
  float anglef;
  float r;
  int rmax = 150;
  float t;
  int u = 0,v = 1;

  Arc(){
  }

  void create(){
    //fill(#ffff00);
    x0 = random(width);
    y0 = random(height);
    vx = random(-20,20);
    vy = random(-20,20);
    angle0 = atan(vy/vx);
    anglef = angle0 + PI; 
    }

  void move(){
    x = x0 + vx*t;
    y = y0 + vy*t;
    r = rmax*abs(sin(t));
    t+=0.020;
  }

  void drawBorderLine(float r){
    if (r <= rmax/4){
      strokeWeight(4);
    }
    if (r <= rmax/3){
      strokeWeight(3);
    }
    if (r <= rmax/2){
      strokeWeight(2);
    }
    if (r >= 2*rmax/3){
      strokeWeight(1.5);
    }
    if (r >= 3*rmax/4){
      strokeWeight(1);
    }
    if (r >= 4*rmax/5){
      strokeWeight(0.75);
    }
  }

  void drawSemiCircle(){
    if(angle <= PI){
      //drawBorderLine(r);
      aperture(u, v);
    }
    if(angle > PI){
      stroke(v * 255);
      strokeWeight(2 * v + 5);
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
    x = x0 + (i) * r * cos(angle0 - angle) + (j) * r * cos(anglef - angle);
    y = y0 + (i) * r * sin(angle0 - angle) + (j) * r * sin(anglef - angle);
    point(x,y);
    x = x0 + (i) * r * cos(angle0 + angle) + (j) * r * cos(anglef + angle);;
    y = y0 + (i) * r * sin(angle0 + angle) + (j) * r * sin(anglef + angle);;
    point(x,y);
  }
}
