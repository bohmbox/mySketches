float x1 = 3;
float y1 = 3;
float x2 = noise(6);
float y2 = noise(6);
void setup(){
float d = dist(x1,y1,x2,y2);
print(d);
}
