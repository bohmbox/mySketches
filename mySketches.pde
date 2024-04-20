PImage img;

String[] imgs = {"./asanohaPattern/asanohaPattern.png", "./asanohaSeed/asanohaSeed.png", "./bubbles/bubbles.png", "./circle_network/circle_network.png", "./colors/wall_of_colors.png", "./kimonoPattern/kimonoPattern.png"};

int colSpan = 30;
int padding = 120;
int steps = 5;
float w = (width - padding)/steps;

void setup(){
  size(1000,1000);
  background(#f1f1f1);
}

void draw(){

  for(int i = 0; i<imgs.length;i++){
    img = loadImage(imgs[i]);
    image(img,150*i,30,160,160);
  }
}
