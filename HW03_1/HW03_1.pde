int tctr = 1;
int bctr = 1;
void setup()
{
  size(800, 800);
  background(0);

  fill(240);
  quad(600, 100, 600, 150, 700, 150, 700, 100);
  quad(600, 200, 600, 250, 700, 250, 700, 200);
  quad(600, 350, 600, 400, 700, 400, 700, 350);
  quad(600, 450, 600, 500, 700, 500, 700, 450);
  quad(600, 550, 600, 600, 700, 600, 700, 550);
  quad(600, 700, 600, 750, 700, 750, 700, 700);
  
  fill(0);
  textSize(25);
  text("Next", 622, 133);
  text("Pre", 630, 233);
  text("random", 605, 383);
  text("Next", 622, 483);
  text("Pre", 630, 583);
  text("Save", 622, 733);
  PImage imgTop = loadImage(tctr + "t.jpg");
  PImage imgBottom = loadImage(bctr + "b.jpg");
  image(imgTop, 0, 0);
  image(imgBottom, 0, 400);
  frameRate(5);
}
void draw()
{
  
  //int Top = int(random(1, 20)); // Select the front card
  //int  Bottom= int(random(1, 20)); // Select the back card

  if(mousePressed == true && mouseButton == LEFT){
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 100 && mouseY <= 150){
      if(tctr + 1 <= 20) tctr++;
      PImage imgTop = loadImage(tctr + "t.jpg");
      image(imgTop, 0, 0);
    }
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 200 && mouseY <= 250){
      if(tctr - 1 >= 1) tctr--;
      PImage imgTop = loadImage(tctr + "t.jpg");
      image(imgTop, 0, 0);
    }
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 350 && mouseY <= 400){
      tctr = int(random(1, 20));
      bctr = int(random(1, 20));
      PImage imgTop = loadImage(tctr + "t.jpg");
      PImage imgBottom = loadImage(bctr + "b.jpg");
      image(imgTop, 0, 0);
      image(imgBottom, 0, 400); 
    }
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 450 && mouseY <= 500){
      if(bctr + 1 <= 20) bctr++;
      PImage imgBottom = loadImage(bctr + "b.jpg");
      image(imgBottom, 0, 400);
    }
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 550 && mouseY <= 600){
      if(bctr - 1 >= 1) bctr--;
      PImage imgBottom = loadImage(bctr + "b.jpg");
      image(imgBottom, 0, 400);
    }
  }
    if(mouseX >= 600 && mouseX <= 700 && mouseY >= 700 && mouseY <= 750){
      save("concatenate.jpg");
    }

}
