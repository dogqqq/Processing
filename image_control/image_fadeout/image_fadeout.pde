PImage img;
int i, s = 10;

void setup(){
  size(1000, 800);
  i=255;
  img = loadImage("husky.jpg");
  frameRate(10);
}

void draw(){
  tint(i); // Tint gray
  image(img, 0, 0);
  i = i-s;
  if (i<0){ 
    i = 0;
    s *= -1;
  }
  if (i>255)
    s *= -1;
 }
