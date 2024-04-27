String peak = "redondo";
String featherType = "cuervo";
color featherColor = color(124,12,150); 
String tail = "larga";
String eye = "redondito";
String foot = "negro";
color c;

void setup(){
  size(700,700);
  background(#f1f1f1);


  Bird b0 = new Bird();
  //Bird b1 = new Bird(peak, featherType, featherColor, tail, eye, foot);

  b0.setFeatherColor(featherColor);
  c = b0.getFeatherColor();
}

void draw(){
  fill(c);
  ellipse(mouseX,mouseY,40,40);
}
