color rosalight = color(153, 97, 108);
color rosadark = color(122, 69, 79);
color rosadarker = color(72, 29, 36);
color[] selector ={rosalight,rosadark,rosadarker};

void setup(){
  size(700,1132);

  strokeWeight(2);
  for(int j= 1;j<height;j+=1){
    for(int i= 1; i<width;i+=6){
      stroke(selector[randomIndex(3)]);
      point(i,j);
    }
  }
  noFill();
  strokeWeight(0.7);
  for(int j= 1; j<height+107;j+=5){
    stroke(selector[randomIndex(3)]);
    arc(width/2, j-11*height/8, 3000, 3000, radians(30), radians(160));
  }

  save("pravilo.png");
}

int randomIndex(int i){
    int index = int(random(i));
    return index;
}
