Alphabet[] alphabets; // Declare the array
int numAlphabets = 50;
int currentAlphabet = 0;

void setup() {
  size(600, 600);
  smooth();
  alphabets = new Alphabet[numAlphabets]; // Create the array
  for (int i = 0; i < numAlphabets; i++) {
    alphabets[i] = new Alphabet(); // Create each object
  }
}

void draw() {
  background(0);
  for (int i = 0; i < numAlphabets; i++) {
    alphabets[i].grow();
    alphabets[i].display();
  }
}

// Click to create a new Ring
void keyPressed() {
  alphabets[currentAlphabet].start(key);
  currentAlphabet++;
  if (currentAlphabet >= numAlphabets) {
    currentAlphabet = 0;
  }
}

class Alphabet {
  float x, y; // X-coordinate, y-coordinate
  float diameter; // Diameter of the ring
  boolean on = false; // Turns the display on and off
  int r, g, b;
  char in;

  void start(char a) {
    x = random(600);
    y = random(600);
    on = true;
    diameter = 15;
    in = a;
    r = (int)random(255);
    g = (int)random(255);
    b = (int)random(255);
  }

  void grow() {
    if (on == true) {
      diameter += 0.5;
      if (diameter > 200) {
        on = false;
      }
    }
  }

  void display() {
    if (on == true) {
      stroke(r, g, b);
      fill(r, g, b);
      textSize(diameter);
      text(in, x, y);
    }
  }
}
