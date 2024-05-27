class Polygon extends Shape{
  // properties for this class
  int pts;

  // constructor
  Polygon(int x, int y, int w, int h, int pts){
    super(x,y,w,h);
    this.pts = pts;
  }

  void create(){
    float px = 0, py = 0;
    float angle = 0; 
    beginShape();
    for(int i = 0; i < pts; i++){
      px = w * cos(radians(angle));
      py = h * sin(radians(angle));
      vertex(px,py);
      angle += 360.0 / pts;
    }
    endShape(CLOSE);

  }

}
