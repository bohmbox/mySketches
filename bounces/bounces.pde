int particles = 100;
float[] x = new float[particles];
float[] y = new float[particles];
float[] vx = new float[particles];
float[] vy = new float[particles];
float[] accel = new float[particles];
float gravity = .74;

void setup(){
  fullScreen();
  background(0);
  smooth();
  strokeWeight(3.5);

  for(int i = 0; i < particles; i++){
    vx[i] = random(.75, 1.2) ;
    accel[i] = random(0.003,0.2);
  }

  for(int i = 0; i < particles; i++){
    stroke(random(255),random(255),random(255));
    while(x[i] < width){
      x[i] += vx[i];

      vy[i] +=accel[i];
      y[i] +=vy[i];
      point(x[i],y[i]);
      

      // ground dynamics
      if( y[i] >= height){
        vy[i] *= -1;
        vy[i] *= gravity;
        // keep particle from sliding out of window
        y[i] = height;

      }
    }
  }
  save("bounces.png");
}
