int counter = 1;
int estrelaRaio = 800;

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
  int estrelaPontas = counter;
  float estrelaIncremento = TWO_PI / estrelaPontas;
    
  for(int i = 0; i < estrelaPontas; i++) {
    float angulo = i * estrelaIncremento;
    float x = cos(angulo) * estrelaRaio;
    float y = sin(angulo) * estrelaRaio;
    line(0, 0, x, y);
  }

  
  

  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}