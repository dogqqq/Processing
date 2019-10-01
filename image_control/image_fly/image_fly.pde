PImage img;
int i, p = 1;

void setup(){
  size(1000, 900);
  i=0;
  img = loadImage("husky.jpg");
  frameRate(20);
}

void draw(){
  background(255);
  image(img, i, 0);
  if(i == 400)  p = 0;
  if(i == -400)  p = 1;
  if(p == 1){
    i = i+20;
  }
  else{
    i = i-20;
  }
}
