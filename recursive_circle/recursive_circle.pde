
void setup(){
  size(600, 600);
  smooth();
  background(255);
  noLoop();
}

void draw(){
  circle(width/2, height/2, 1);
}

void circle(int x, int y, float d){
  if(d >= 600) return;
  noFill();
  ellipse(x, y, d, d);
  d *= 1.25;
  circle(x, y, d);
}
