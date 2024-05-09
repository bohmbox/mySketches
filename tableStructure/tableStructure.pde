int padding = 200;
int colSpan,rowSpan;  
int cols = 15;
int rows = 20;

void setup(){
  fullScreen();
  background(0);
  fill(#D0A389);

  colSpan = (width - padding)/cols; 
  rowSpan = (height - padding)/rows; 
}

void draw(){
  for(int j = 0; j <= height; j+=colSpan){
    for(int i = 0;i <= width; i+=rowSpan){
      ellipse(i,j, 100,100);
      ellipse(i-25,j+20, 15,15);
    }
  }
}
