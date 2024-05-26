int steps= 300;
float[] x = new float[steps];
float[] y = new float[steps];
float[] vx = new float[steps];
float[] vy = new float[steps];

void setup(){
  size(800,800);
  background(255);
  float margin = height/10;
  smooth();
  strokeWeight(2.0);

  for(int i = 0; i<steps; i++){
    x[i] = 0; // each i is a curve.  
    y[i] = random(1.5*margin); 
    vx[i] = random(0.75,1.1); //each i value has a fixed set of values that characterizes that curve 
    vy[i] = random(1.0075,1.04); 
  }

  for(int i = 0; i<steps; i++){
    while(y[i]<height){
      point(x[i],y[i]);
    x[i] += vx[i]; // arithmetic progression
    y[i] *= vy[i]; // geometric progression
    }
  }
  saveMe();
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("curvesI.png");
  }
}
