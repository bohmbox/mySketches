PImage img;
float w = 40;
float h = w*1.618;

Tile t = new Tile(w,h,1);

void setup(){
  fullScreen();
  img = loadImage("./Screenshot_20240427_155946_com.whatsapp.jpg");
  translate(300,300);
  t.quarterBright();
  translate(300,0);
  t.quarterDark();
  image(img,0,0);
}

void draw(){
}

