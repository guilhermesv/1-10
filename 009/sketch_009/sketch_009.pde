int counter = 1;

void setup() {
  size(500, 500);
  background(255);
  frameRate(10);
  noStroke();
  fill(0);
}

void draw() {
  background(255);

  float passo = height/10;
  float retanguloAltura = counter * passo;

  rect(0, height - retanguloAltura, width, retanguloAltura);

  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}