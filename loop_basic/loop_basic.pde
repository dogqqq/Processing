size(800, 600);
background(255, 255, 255);
//noStroke();
//int(random(255));

//for(int x = ;){
//  for(int y = ){
//      strokeWeight();
//   }
//}


for(int i = 0; i<=100;i++){
  fill(random(0,255), random(0,255), random(0,255), random(0,254));
  rect(random(0,800), random(0,600), random(1,600), random(1,800));
}

strokeWeight(5);
fill(45, 52, 150);
for(int i = 0; i<=100; i+=25){
  for(int j = 0; j<=1000; j+=25){
    ellipse(j, j-i, 20, 20);
  }
}

strokeWeight(1);
fill(255, 255, 0);  //yellow
rect(200, 50, 350, 300);  //body

fill(0, 0, 0);  // black

fill(255, 255, 255);  //white
ellipse(325, 180, 100, 100);
ellipse(425, 180, 100, 100);

fill(73, 135, 235);  //blue
strokeWeight(10);
ellipse(325, 180, 20, 20);
ellipse(425, 180, 20, 20);

fill(255, 0 ,0);  //red
strokeWeight(1);
bezier(325, 250, 350, 400, 450, 350, 500, 225);

fill(255, 255, 0);  //yellow
strokeWeight(5);
bezier(325, 249, 350, 300, 450, 300, 500, 224);




