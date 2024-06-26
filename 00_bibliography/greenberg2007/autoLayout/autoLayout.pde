/* Auto Layout.
 *
 * Ira Greenberg. Processing: Creative coding and computational art.
 * p.231 in the e-file.
 */

size(500,300);
background(255);
int[] caps = {ROUND, PROJECT, SQUARE};
strokeWeight(20);
int shapes = 3;
int padding = 200;

float w = (width - padding)/shapes;
float h = w;
float colSpan = (width - shapes*w)/(shapes + 1);
float x = colSpan; // initial position
float y = (height - h) / 2; 

for(int i = 0, j= 0; i< shapes; i++){
  strokeCap(caps[j++]);
  if(j>2){
    j = 0;
  }
  line(x,y,x+w,y);
  line(x+w,y,x+w,y+h);
  line(x,y+h,x+w,y+h);
  line(x,y+h,x,y);
  x+=w+colSpan;
}

