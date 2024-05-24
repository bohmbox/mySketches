int step = 10; 
void setup(){
  size(700,700);
  background(255);

}

void draw(){
  stroke(#16161b);
  strokeWeight(4);
  for(int j = 0; j < height; j+=step){
    for(int i = 0; i < width; i += step){
      point(i,j);
    }
  }
}

void mouseDragged(){
  stroke(#ff0000);
  strokeWeight(8);
  if(mouseX % step <= (step/2) || mouseY % step <= (step/2)){
    point(mouseX-(mouseX % step), mouseY-(mouseY % step));
  }
  else{
    point(mouseX + (step - mouseX% step), mouseY + (step - mouseY%step));
  }
}
