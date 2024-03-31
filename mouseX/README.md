Testing of mouseX and mouseY, as its not really clear when they give values and when they don't.

void setup(){
size(600,600);
}

void draw(){
background(255);
print("mouseX = ", mouseX);
println(", mouseY = ", mouseY);
fill(0);
ellipse(mouseX,mouseY,10,10);

}
