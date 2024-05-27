int m;

void setup(){
  size(700,700);
  strokeWeight(4);
  smooth();
}

void draw(){
  background(255);
  legend();
  noFill();
  m = int(map(mouseX,0,width,0,12));
  Polygon p = new Polygon(0, 0, 175, 175, m);
  translate(width/2,height/2);
  p.create();
  saveMe();
}

void legend(){
  PFont myFont;
  myFont = createFont("Ubuntu",25);
  textFont(myFont);
  textAlign(CENTER);
  fill(0);
  text("Displace the mouse to create different polygons", width/2,40);
}

void saveMe(){
  if(mousePressed){
    print("saved");
    String title = "polygonInheritance_"+ m + ".png";
    save(title);
  }
}

