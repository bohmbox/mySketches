void setup(){
  size(1400,700);
  frameRate(7);
}

void draw(){
  // background
  fill(0);
  rect(0,0,width/2,height);
  fill(50);
  rect(width/2,0,width/2,height);
  
  int[] origin1 = {width/4,height/2};
  int[] origin2 = {3*width/4,height/2};
  
  // axis lines
  stroke(255);
  strokeWeight(0.2);
  line(0,origin1[1],width,origin1[1]);
  line(origin1[0], 0, origin1[0] ,height);
  line(origin2[0], 0, origin2[0] ,height);
  
  // angles
  float equipartition = random(33,36);
  float angle = 360 / equipartition;

  // first eye
  translate(origin1[0],origin1[1]);
  stroke(255);
  strokeWeight(0.5);
  for (int i = 1; i <= 360; i+=1){
    float innerR = random(42,48);
    float outerR = random(width/4,width/4+30);
    
    float x0 = innerR * cos(i);
    float y0 = innerR * sin(i);
    float xf = outerR * cos(i);
    float yf = outerR * sin(i);
    line(x0,y0,xf,yf);
  }
  fill(255);
  noStroke();
  ellipse(0,0,width/8 + random(3),width/8+random(3));
  fill(0); 
  ellipse(0,0,width/16,width/16);
  fill(255);
  ellipse(0,0,width/32+10,width/32+10);
  fill(0);
  ellipse(0,0,width/32-10,width/32-10);


  // second eye
  translate(-origin1[0],-origin1[1]);
  translate(origin2[0],origin2[1]);
  
  stroke(255);
  strokeWeight(0.5);
  for (int i = 1; i <= 360; i+=1){
    float innerR = random(42,48);
    float outerR = random(width/4,width/4+30);
    
    float x0 = innerR * cos(i);
    float y0 = innerR * sin(i);
    float xf = outerR * cos(i);
    float yf = outerR * sin(i);
    line(x0,y0,xf,yf);
  }
  fill(255);
  noStroke();
  ellipse(0,0,width/8 + random(3),width/8+random(3));
  fill(0); 
  ellipse(0,0,width/16,width/16);
  fill(255);
  ellipse(0,0,width/32+10,width/32+10);
  fill(0);
  ellipse(0,0,width/32-10,width/32-10);

  save("radiationEyes.png");  
}
