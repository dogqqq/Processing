size(800, 600);
noStroke();
background(166, 192, 247);

for(int x = 50; x <= 800; x += 100){
  for(int y = 20; y <= 600; y += 80){
    fill(95, 250, 95, (int)random(50, 255));
    ellipse(x, y, 50, 100);
    fill(227, 252, 227, (int)random(50, 255));
    ellipse(x, y, 50, 50);
    fill(121, 242, 153, (int)random(50, 255));
    rect(x-50, y-40, 100, 80);
  }
}
