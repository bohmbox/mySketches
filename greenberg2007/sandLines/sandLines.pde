int totalPoints = 1000;
float steps = totalPoints + 1;
int totalRows = 30;
int rowShift = height/totalRows;
float rowNudge = -0.4;
float rowHop = 0;
int randNudge = 4;

void setup(){
  size(600,600);
  background(0);
  stroke(255);
  strokeWeight(1.5);

  for(int j= rowShift; j<=height; j+=rowShift){
    for(int i=1;i<=steps;i++){
      rowHop -=rowNudge;
      if(j % (1 + (int)(random(randNudge))) == 0){
        rowNudge *=-1;
      }
      point(i*(width/steps),j + rowHop);
    }
  }
  save("sandLines.png");
}
