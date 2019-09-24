void setup() {
  size(500, 400);
  smooth();
  background(255, 255, 255);
  strokeWeight(3);
  fill(255, 0, 0);
  rect(0, 0, 50, 50);
  fill(0, 255, 0);
  rect(0, 50, 50,50);
  fill(0, 0, 255);
  rect(0,100, 50, 50);
  fill(0, 0, 0);
  rect(0, 150, 50, 50);
  fill(146, 152, 224);
  rect(0, 200, 50, 50);
  fill(204);
  rect(450, 0, 50, 50);
  rect(450, 50, 50, 50);
  rect(450, 100, 50, 50);
  rect(450, 150, 50, 50);
  rect(450, 200, 50, 50);
  fill(0);
  textSize(12);
  text("Erase", 460, 28);
  text("Save", 462, 78);
  text("Clear", 460, 228);
  strokeWeight(8);
  line(475, 125, 475, 125);
  strokeWeight(15);
  line(475, 175, 475, 175);
}
void draw() {
  strokeWeight(8);
  if(mouseButton == LEFT){
      if((mouseX)<=50 &&(mouseY)<=50){
        stroke(255, 0, 0);
      }
      else if((mouseX)<=50 && (mouseY)>=50 && (mouseY) <=100){
        stroke(0, 255, 0);
      }
      else if((mouseX)<=50 && (mouseY)>=100 && (mouseY) <=150){
        stroke(0, 0, 255);
      }
      else if((mouseX)<=50 && (mouseY)>=150 && (mouseY) <=200){
        stroke(0, 0, 0);
      }
      else if((mouseX)<=50 && (mouseY)>=200 && (mouseY) <=250){
        stroke(146, 152, 224);
      }
      else if((mouseX)>=450 && (mouseY)>=200 && (mouseY) <=50){
        stroke(255, 255, 255);
      }
    if((mouseX) > 50 && (pmouseX) > 50 && (mouseX) < 450 && (pmouseX) < 450){
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
    
  }

  
}
