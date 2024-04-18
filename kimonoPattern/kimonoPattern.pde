//color palette
color lightGray = color(58, 82, 88);
color darkGray = color(32, 58, 63);
color darkGray2= color(43, 56, 63);
color pink= color(247,37,133);

// cell parameters
float[] cellOrigin = {0,0};
float hexRadius = 100;
float angle = 70;
float d1 = hexRadius/2.8;

// net parameters (vectors between cell origins)
float offset = 200;

void setup(){
  size(1080,720);
  background(darkGray);
  //stroke(lightGray);
  for(int j=1; j<=(height+offset)/hexRadius;j++){
    pushMatrix();
    for(int i=1;i<=(width+offset)/(hexRadius);i++){
    cell();
    translate((hexRadius+d1)*cos(radians(-30)),
        (hexRadius+d1)*pow(-1,i)*sin(radians(-30)));
    }
    popMatrix();
    translate(0,hexRadius+d1);
  }
  save("kimonoPattern.png");
}

void cell(){
  stroke(pink);
  // inner triad of lines
  // 270°
  for(int i=0; i<=2;i++){
  strokeWeight(4);
  line(cellOrigin[0],
      cellOrigin[1],
      hexRadius*cos(radians(270)),
      hexRadius*sin(radians(270)));
  // outer lines
  // 270° (vertical outer lines)
  strokeWeight(5);
  line(cellOrigin[0] + d1*cos(radians(-30)),
       cellOrigin[1] + d1*sin(radians(-30)),
       cellOrigin[0] + d1*cos(radians(-30)),
       d1*cos(radians(60))-hexRadius);

  strokeWeight(3);
  line(cellOrigin[0] - d1*cos(radians(30)),
       cellOrigin[1] - d1*sin(radians(30)),
       cellOrigin[0] - d1*cos(radians(30)),
       d1*cos(radians(60))-hexRadius);
  // rotate 120°
  rotate(radians(120));
  }
}

