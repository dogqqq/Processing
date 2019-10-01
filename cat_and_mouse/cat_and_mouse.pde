PImage cat, mouse;
int i = 10;
int cat_size = 80;
int score = 0;
int cat_x = (int)random(0, 700), cat_y = (int)random(0, 700);
//int mouse_x = (int)random(0, 700), mouse_y = (int)random(0, 700);
int[] mouse_x = new int[50];
int[] mouse_y = new int [50];

void setup(){
  size(800, 800);
  cat = loadImage("Cat.jpg");
  mouse = loadImage("Mouse.jpg");
  frameRate(40);
  for(int i = 0; i < 50; i++){
    mouse_x[i] = (int)random(0, 700);
    mouse_y[i] = (int)random(0, 700);
  }
}

void draw(){
  background(255);
  //image(mouse, mouse_x, mouse_y, 100, 100);
  for(int i = 0; i < 50; i++){
    image(mouse, mouse_x[i], mouse_y[i], 100, 100);
  }
  image(cat, cat_x, cat_y, cat_size, cat_size);
  fill(255, 0 ,0);
  textSize(50);
  text("Score: ", 20, 80);
  text(score, 180, 80);
  for(int i = 0; i < 50; i++){
    if(cat_x <= mouse_x[i] + cat_size/1.5 && cat_x >= mouse_x[i] - cat_size/1.5 && cat_y <= mouse_y[i] + cat_size/1.5 && cat_y >= mouse_y[i] - cat_size/1.5){
      textSize(80);
      text("Yummy!Yummy!", 100, 400);
      score ++;
      mouse_x[i] = -1000;
      mouse_y[i] = -1000;
      
    }
  }
  if (score == 50){
    textSize(50);
    text("Score: ", 20, 80);
    text(score, 180, 80);
    textSize(80);
    text("Victory~~~!", 100, 400);
  }
  //if(cat_x <= mouse_x + cat_size/1.5 && cat_x >= mouse_x - cat_size/1.5 && cat_y <= mouse_y + cat_size/1.5 && cat_y >= mouse_y - cat_size/1.5){
  //  textSize(80);
  //  text("Yummy!Yummy!", 100, 400);
  //  mouse_x = (int)random(0, 700);
  //  mouse_y = (int)random(0, 700);
  //  score ++;
  //  cat_size += 10;
  //}
  if(keyPressed == true && key == 'w'){
    if(cat_y > 20){
      cat_y -= i;
    }
  }
  if(keyPressed == true && key == 'a'){
    if(cat_x > -30){
      cat_x -= i;
    }
  }
  if(keyPressed == true && key == 's'){
    if(cat_y < 780){
      cat_y += i;
    }
  }
  if(keyPressed == true && key == 'd'){
    if(cat_x < 780){
      cat_x += i;
    }
  }
  //println("x: " + cat_x + " = " + mouse_x + "   y:" + cat_y + " = " + mouse_y);
  
}
