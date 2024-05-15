int sideLength = 40;
int innerSpacing = 18;
int outerSpacing = 4;
int angle = 45;

void setup(){
  size(800,800);

  for(int i = 0; i < 5;i++){
    line(0,i*sideLength/innerSpacing,5%i,i*sideLength/innerSpacing);
  }

}
