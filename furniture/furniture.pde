int[] sizes = {70,100,130,160,190,220};
int numCircles = 1;
int k = 0;
int step = 60;
int discriminator;

void setup(){
  fullScreen();
  background(#6C6161);
  stroke(0);
  strokeWeight(5);
  fill(#6C6161);

}

void draw(){
  while(k <= numCircles){
    for(int j = 0; j < height; j += step){
      for(int i = 0;i < width; i += step){
        float xx = i + random(-5,+5);
        float yy = j + random(-5,+5);
        discriminator = int(random(10));
        if (discriminator == 1){
          circ(xx,yy);
        }
      }
    }
    k++;
  }
  saveMe();
}

void circ(float x, float y){
  int val = floor(random(sizes.length));

  for(int d = sizes[val]; d> 20; d -= random(20,50)){
    strokeWeight(int(random(3,8)));
    ellipse(x,y,d,d);
  }
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("furniture.png");
  }
}
