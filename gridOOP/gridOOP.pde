color[] colorPallete={#27336A,#955B1C,#189199,#A0BBBB,#151C22};

void setup(){
  size(1700,1700);
  for (int i = 0; i<colorPallete.length;i++){
  fill(colorPallete[i]);
  ellipse(200*i,200*i,50,50);
  angleMode(degrees);
  } 
}

float rotator(){
  int angle= 45;
  float angleStep = 360.0/angle;
  float angle = int(random())

  }

  return angle; 

}
