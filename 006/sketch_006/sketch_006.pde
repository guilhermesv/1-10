int counter = 1;
int borda = 30;
int passoTamanho = 50;

ArrayList<PVector> passos = new ArrayList<PVector>();

void setup() {
  size(500, 500);
  frameRate(10);

  stroke(0);
  strokeWeight(5);
  strokeJoin(BEVEL);
  noFill();

  PVector pontoInicial = new PVector(width/2, height/2);
  passos.add(pontoInicial);


  // Primeiro passo
  PVector primeiroPasso = new PVector();
  primeiroPasso = PVector.random2D();
  primeiroPasso.x = pontoInicial.x + (primeiroPasso.x * passoTamanho);
  primeiroPasso.y = pontoInicial.y + (primeiroPasso.y * passoTamanho);
  passos.add(primeiroPasso);
}

void draw() {
  background(255);
  stroke(0);
  beginShape();
  for (PVector passo : passos) {
    vertex(passo.x, passo.y);
  }
  endShape();
  
  //stroke(255, 0,0);
  //for (PVector passo : passos) {
  //  point(passo.x, passo.y);
  //}

  PVector ultimoPasso = passos.get(passos.size()-1);
  PVector novoPasso = new PVector();
  novoPasso = PVector.random2D();
  novoPasso.x = ultimoPasso.x + (novoPasso.x * passoTamanho);
  novoPasso.y = ultimoPasso.y + (novoPasso.y * passoTamanho);

  while (novoPasso.x < borda || novoPasso.x > width - borda ||
    novoPasso.y < borda || novoPasso.y > height - borda) {
    novoPasso = PVector.random2D();
    novoPasso.x = ultimoPasso.x + (novoPasso.x * passoTamanho);
    novoPasso.y = ultimoPasso.y + (novoPasso.y * passoTamanho);
  }

  passos.add(new PVector (novoPasso.x, novoPasso.y));

  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}