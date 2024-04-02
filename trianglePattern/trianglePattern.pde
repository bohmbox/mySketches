color black = color(0, 0, 0);
color sepia = color(114, 99, 65);
float h_steps = 4;
float v_steps = 6;
float h_cell;  
float v_cell;
float h_inner;  
float v_inner;

void setup(){
size(600,900);
background(black);
noStroke();
}

void draw(){
  for(int j = 1;j<height;j+=v_cell){
    for(int i = 0; i<width;i+=h_cell){
      translate(h_cell,0);
      triangles();
    }
    translate(-(width),v_cell);
  }
  save("trianglePattern.png");
}

void triangles(){
fill(sepia);
h_cell = width/h_steps;
v_cell = height/v_steps;
h_inner = h_cell/2;
v_inner = v_cell/2;
float[] p1 = {0,0};
float[] p2 = {0,h_inner};
float[] p3 = {h_inner,v_inner};
triangle(p1[0],p1[1],p2[0],p2[1],p3[0],p3[1]);
float[] p4 = {h_inner,0};
float[] p5 = {h_inner,v_inner};
float[] p6 = {h_cell,0};
triangle(p4[0],p4[1],p5[0],p5[1],p6[0],p6[1]);
float[] p7 = {0, v_cell};
float[] p8 = {h_inner,v_cell};
float[] p9 = {h_inner,v_inner};
triangle(p7[0],p7[1],p8[0],p8[1],p9[0],p9[1]);
float[] p10 = {h_inner,v_inner};
float[] p11 = {h_cell,v_cell};
float[] p12 = {h_cell,v_inner};
triangle(p10[0],p10[1],p11[0],p11[1],p12[0],p12[1]);
}
