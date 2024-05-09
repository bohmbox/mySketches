class Tile{

  private float w;
  private float h;
  private float depth;

  Tile(float w, float h, float depth){
    this.w = w;
    this.h = h;
    this.depth = depth;
  }

  void quarterBright(){
    beginShape();
    fill(0);
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);
  }

  void quarterDark(){
    beginShape();
    fill(#00ffff);
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);

  }

  void thirdBright(){
    beginShape();
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);

  }

  void thirdDark(){
    beginShape();
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);

  }

  void halfBright(){
    beginShape();
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);

  }

  void halfDark(){
    beginShape();
    vertex(0,0);
    vertex(w,-w*cos(radians(30)));
    vertex(w,h*cos(radians(30)));
    vertex(0,h);
    endShape(CLOSE);

  }

}

