PImage img;
int i, s = 10;

void setup()
{
size(500, 500);
i=10;
img = loadImage("husky.jpg");
frameRate(20);
}

void draw()
{
background(255);
image(img, 50, 50, i, i);
i = i+s;
if (i > 400) s *= -1;
if (i < 20) s *= -1;
}
