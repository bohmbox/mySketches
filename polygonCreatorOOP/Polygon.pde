class Polygon extends Shape {
  // subclass properties
  private int pts;

  Polygon(){}

  // constructor
  Polygon(int x,int y, int w, int h, int pts){
    // always add the superclass parameters first
    super(x,y,w,h);
    // specific initializations to the subclass
    this.pts = pts;
  }

  void setPts(int pts){
    this.pts = pts;
  }

  //method to draw a poly
  void create(){
      float px = 0;
      float py = 0;
      float angle = 0;
      beginShape();
        for(int i = 0;i<this.pts;i++){
          px =this.x + this.w * cos(radians(angle));
          py =this.y + this.h * sin(radians(angle));
          vertex(px,py);
          angle += 360.0/this.pts;
        }
      endShape(CLOSE);
  }

}
