int counter = 1;
PImage img;
int resolucao = 1;


void setup() {
  size(500, 500);
  frameRate(10);
  img = loadImage("imagem.png");
  noStroke();
}

void draw() {
  image(img, 0, 0);
  int resolucao = counter;
  float pontoTamanho = width / resolucao;
  int pontoTamanhoInt = int(pontoTamanho);
  
  for(int i = 0; i < resolucao; i++) {
    for(int j = 0; j < resolucao; j++) {
       int pixelAnalisadoX = pontoTamanhoInt/2 + (pontoTamanhoInt * i);
       int pixelAnalisadoY = pontoTamanhoInt/2 + (pontoTamanhoInt * j);
       color cor = img.get(pixelAnalisadoX, pixelAnalisadoY);
       fill(cor);
       rect(i * pontoTamanho, j * pontoTamanho, pontoTamanho, pontoTamanho);
    }
  }
  
  
  saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}