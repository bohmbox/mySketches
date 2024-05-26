color pink = color(245, 127, 179);
int numBubbles = 20;
Bubble[] bubbles = new Bubble[numBubbles];
int  nextBubble = 0;

void setup(){
  fullScreen();
  noFill();
  stroke(pink);
  strokeWeight(1.5);
  smooth();
}

void draw(){
  background(#16161b);
  if(frameCount % 60 == 0){
    if(nextBubble < bubbles.length){
      bubbles[nextBubble] = new Bubble(random(width),height);
      nextBubble++;
    }
  }
  
  // move and display existing bubbles
  for(int i = 0; i < bubbles.length; i++){
    if(bubbles[i] != null){
      bubbles[i].grow();
      bubbles[i].display();

      // checks if bubble is big enough to raise and remove it when it reaches the top
      if(bubbles[i].isBigEnough() && bubbles[i].y < 0){
        bubbles[i] = null;
      }
    }
  }
  saveMe();
}

void saveMe(){
  if(mousePressed){
    println("saved");
    save("bubbles.png");
  }
}
