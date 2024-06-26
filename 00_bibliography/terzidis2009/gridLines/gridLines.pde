void setup(){
  fullScreen();
  //size(1200,200);
  background(#16161b);

  stroke(#CEF4F4);
  strokeWeight(2);
  noLoop();
}

//  ----------------------------------------- pattern 1
int step = 40;
float x0, y0, xf, yf; 

void pattern1(){
  int pointer = 1;
  while(pointer<=width){
    x0 += step*abs(sin(radians(pointer)));
    y0 = 0;
    xf = x0;
    yf = height;

    line(x0,y0,xf,yf);
    //println(x0);
    pointer+= 10;
  }
}

//  ----------------------------------------- pattern 2
void pattern2(){
  int pointer = 1;
  while(pointer<=height){
    x0 = 0;
    y0 += step*abs(sin(radians(random(pointer))));
    xf = width;
    yf = y0;

    line(x0,y0,xf,yf);
    //println(x0);
    pointer+= 10;
  }
}

//  ----------------------------------------- pattern 3
int xPadding = 7;
int yPadding = 10;
float x,y;
float w,h;
float blockHeight = 100;
float jump = 2.2 * blockHeight;

void specsSquarePattern3(){
  stroke(#CEF4F4);
  strokeWeight(6);
  rectMode(CENTER);
  noFill();
}
void squarePattern3(){
  specsSquarePattern3();
  for(int j = 0; j<= height; j+=jump){
    for(int i = 0; i <= width; i+=blockHeight+xPadding){
      x = i;
      y = j + blockHeight/2;
      w = blockHeight-random(10); // these definitions are missing to get the full effect
      h = blockHeight-random(10);
      rect(x,y,w,h);
    }
  }
}

void specSeparatorPattern3(){
  fill(#36302D);
  noStroke();
  rectMode(CORNER);
}

void separatorPattern3(){
  specSeparatorPattern3();

  for(int j = 0; j<= height; j+=jump){
    x0 = 0;
    y0 = j + blockHeight+yPadding;
    w = width;
    h = blockHeight;
    rect(x0,y0,w,h);
  }
}

void pattern3(){
  squarePattern3();
  separatorPattern3();
}

//  ----------------------------------------- pattern 4
void specsSquarePattern4(){
  stroke(#CEF4F4);
  strokeWeight(6);
  rectMode(CENTER);
  noFill();
}
void squarePattern4(){
  specsSquarePattern4();
  for(int j = 0; j<= width; j+=jump){
    for(int i = 0; i <= height; i+=blockHeight+xPadding){
      x = j + blockHeight/2;
      y = i;
      w = blockHeight-random(10); // these definitions are missing to get the full effect
      h = blockHeight-random(10);
      rect(x,y,w,h);
    }
  }
}

void specSeparatorPattern4(){
  fill(#36302D);
  noStroke();
  rectMode(CORNER);
}

void separatorPattern4(){
  specSeparatorPattern4();

  for(int j = 0; j<= width; j+=jump){
    x0 = j + blockHeight+yPadding;
    y0 = 0;
    w = blockHeight;
    h = height;
    rect(x0,y0,w,h);
  }
}


void pattern4(){
  squarePattern4();
  separatorPattern4();
}

void draw(){
  pattern1();
  //pattern2();
  //pattern3();
  pattern4();

}

