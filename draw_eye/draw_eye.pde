void setup(){
  size(800, 600);
  background(255, 255, 255);
  noStroke();
  smooth();
}

void draw(){
  background(255, 255, 255);
  for(int i = 100; i<=700; i+=200){
    for(int j = 100; j<=600; j+=200){
      fill(255, 0, 0);
      ellipse(i, j, 200, 200);
      fill(0, 255, 0);
      ellipse(i+(mouseX-400)/10, j+(mouseY-300)/8, 100, 100);
      fill(0, 0, 255);
      ellipse(i+(mouseX-400)/8, j+(mouseY-300)/6, 50, 50);

    }
  }
 
}
