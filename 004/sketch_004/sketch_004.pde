int counter = 1;
int poligonoRaio = 200;

void setup() {
  size(500, 500);
  background(255);
  frameRate(10);
  strokeWeight(5);
  stroke(0);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(-HALF_PI);
  int poligonoLados = counter;
  float poligonoIncremento = TWO_PI / poligonoLados;
  
  beginShape();
  for(int i = 0; i < poligonoLados; i++) {
    float angulo = i * poligonoIncremento;
    float x = cos(angulo) * poligonoRaio;
    float y = sin(angulo) * poligonoRaio;
    vertex(x, y);
  }
  endShape(CLOSE);
  
  

  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}