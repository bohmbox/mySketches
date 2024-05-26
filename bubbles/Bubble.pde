class Bubble{
  int startTime;
  float radius;
  int radiusMax = 15;
  int growTime = 3000;
  float x, y;

  Bubble(float x, float y){
    this.x = x; 
    this.y = y;
    int startTime = millis();
    radius = 1; 
  }

  void grow(){
    float elapsedTime = millis() - startTime;
    radius = map(elapsedTime, 0, growTime, 0, radiusMax);
    y -= 1; //sin(frameCount * 0.01f)*2;
  }

  void display(){
    ellipse(this.x,this.y,radius*2,radius*2);
  }

  boolean isBigEnough(){
    return radius >= radiusMax;
  }
}
