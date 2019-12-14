int x = 0, y = 0;
int tmpR = (int)random(255);
int tmpG = (int)random(255);
int tmpB = (int)random(255);

void setup(){
  size(950, 750);
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
}

void draw(){
  for(int i = 0; i <= 100 ; i++){
    for(int j = 0; j <= 100; j++){
      fill((tmpR+i*20)%256, (tmpG+j*20)%256, (tmpB+i*50)%256);
      rect(i*100*0.8, j*100*0.75, 50, 50);
      pushMatrix();
      fill((tmpB+j*50)%256, (tmpG+i*20)%256, (tmpR+j*20)%256);
      translate(i*100*0.8, j*100*0.75);
      rotate(PI/4);
      rect(0, 0, sqrt(2*25*25), sqrt(2*25*25));
      popMatrix();
    }
  }
}
