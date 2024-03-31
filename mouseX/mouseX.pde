void setup(){
size(600,600);
}

void draw(){
background(255);
print("mouseX = ", mouseX/10);
println(", mouseY = ", mouseY/10);
fill(0);
ellipse(mouseX,mouseY,10,10);

}
