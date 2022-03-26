// la portada del libro realismo capitalista, de Mark Fisher, tiene un diseño
// que me ha llamado la atención. Quiero hacerla en código processing
//
PShape shape = new Pshape();
void setup(){
  size(600,600);
  background(255,255,255);
  translate(width/2,0);
  fill(255,0,0);
  rect(0,0,width/2+5,height+5);
  fill(255,255,255);
  shape(); // creo que deberian de ser vertex lo de adentro. Solo vertex
  vertex(10,30,10,70);
  shape();
  line(0,30,0,70);
}

