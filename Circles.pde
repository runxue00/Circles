int x = 400;
int y = 1500;

int direction = 1; // Added by Alex
void setup() {
  size(2000, 2000);
  background(0, 0, 0);
}

void draw() {
  rect(0, 0, 2000, 2000);
  x+=15 * direction;
  y-=15 * direction;
  noFill();
  for (int i=10; i < 400; i+=10)
  {
    ellipse(x, 400, i, i);
    ellipse(y, 400, i, i);
  }
  fill(255, 255, 255);
  
  if (x > 1000 || x < 0) {
    direction *= -1;
  }
}