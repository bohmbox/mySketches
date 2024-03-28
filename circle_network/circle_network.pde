void setup(){
  background(123,49,65);
  size(400,400);
  //frameRate(4);
}

// variables globales de la función draw
//
// int num_nodes = 10; // este es el valor que determina la densidad de red
int num_nodes = int(random(0,10)); // este es el valor que determina la densidad de red
//println(num_nodes);
float angle = 360 / num_nodes;
float r = 150;

void draw(){
  translate(200,200);
  ellipse(0,0,2*r,2*r);
  for (int i = 0; i <= num_nodes; i++){
    float x0 = nodeX(i);
    float y0 = nodeY(i);
    for (int j = 1; j<= num_nodes; j++){
      float xf = next_nodeX(i,j);
      float yf = next_nodeY(i,j);
      line(x0,y0,xf,yf);
    }
  }
  save("circle_network.png");
}

float nodeX(int i){
  return r* cos(i*angle);
}
float nodeY(int i){
  return r* sin(i*angle);
}
float next_nodeX(int i,int j){
  return r*cos((i+j)*angle);
}
float next_nodeY(int i, int j){
  return r*sin((i+j)*angle);
}

