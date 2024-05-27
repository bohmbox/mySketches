int particles = 1000;

int timelimit = 3000;
float particleSpan = 2;
float accelMin = 0.005;
float accelMax = 0.2;
float strokeWtMin = 1.25;
float strokeWtMax = 1.7;
float materialMin = 0.25;
float materialMax = 0.99;
float gravityMin = 0.75;
float gravityMax = 0.999;

int timer;
float[] x = new float[particles];
float[] y = new float[particles];
float[] vx = new float[particles];
float[] vy = new float[particles];
float[] accel = new float[particles];
float[] material = new float[particles];
float[] strokeWts = new float[particles];
float[] gravity = new float[particles];


void setup(){
  fullScreen();
  background(0);
  smooth();
  stroke(250);

  for(int i = 0; i< particles; i++){
    x[i] = random(width/2 - 50, width/2 + 50);
    vx[i] = random(-particleSpan, particleSpan);
    accel[i] = random(accelMin,accelMax);
    material[i] = random(materialMin,materialMax);
    strokeWts[i] = random(strokeWtMin,strokeWtMax);
    gravity[i] = random(gravityMin, gravityMax);
  }

  for(int i= 0; i<particles;i++){
    // timer controls the while loop
    timer = 0;
    strokeWeight(strokeWts[i]);

    while(timer++ < timelimit){
      x[i] +=vx[i];
      vy[i] += accel[i];
      y[i] += vy[i];
      point(x[i],y[i]);

      // check ground detection
      if(y[i] >= height){
        // reverse particle detection
        vy[i] *= -1;
        vy[i] *= gravity[i];
        y[i] = height;
      }
      // check wall detection
      if(x[i] > width || x[i] < 0){
        // reverse particle horizontal direction
        vx[i] *=-1;
      }
    }
  }
  save("cascade.png");
}
