int[] modules = new int[9];
void setup(){
  size(400,400);
  background(200);
  modularOp();
  translate(100,100);
  rectDisplay();
}

void modularOp(){
  for(int i=1; i<9;i++){
    int op = (4*i)%(3);
    modules[i] = op;
  }
}

void rectDisplay(){
  int i = 0; 
  int[] xPos = new int[9];
  int[] yPos = new int[9];
  do{
    xPos[i] = i;
    yPos[i] = modules[i];
    rect(xPos[i],0,xPos[i]*100+100*i,yPos[i]*100);
    i++;
  }while(i < modules.length);
}
