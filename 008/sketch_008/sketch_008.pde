int counter = 1;
int passo = 0;

void setup() {
  size(500, 500);
  background(255);
  frameRate(10);
  strokeWeight(5);
  stroke(0);
  noFill();
  ellipseMode(CENTER);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  for (int i = 1; i <= counter; i++) {
    ellipse(0, 0, passo * i, passo * i);
  }

  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}