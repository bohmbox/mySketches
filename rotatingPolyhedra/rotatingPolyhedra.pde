// rotating Polyhedra
// Ira Greenberg2007, p.195.

// declare variables
float rotX=0.1;
float rotY=0.1;
float rotZ=0.1;

void setup(){
  size(2600,2600,P3D);
  frameRate(10);
}

void draw(){
  background(255);
  // shapes drawn in 3D
  translate(width/2, height/2, mouseY-100);

  // rotate around X and Y axis
  rotate(rotX+=0.01);
  rotate(rotY+=0.01);
  rotate(rotZ+=0.01);

  // mouseX position controls level of detail of inner Sphere
  sphereDetail(mouseX/16);

  // Design specs of the spheres
  fill(0);
  stroke(255);
  // draw sphere
  //sphere(30);
  fill(50,50,50,175);
  noStroke();

  // draw box
  box(800);
  noFill();
  //sphereDetail(8);
  stroke(0);

  // draw larger outer sphere
  sphere(800);

  save("rotatingPolyhedra.png");
}
