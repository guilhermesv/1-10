int counter = 1;

PFont font;

void setup() {
  size(500, 500);
  font = createFont("Space Mono Bold", 32);
  textFont(font);
  textSize(140);
  fill(0);
  background(255);
  frameRate(3);
}

void draw() {
  background(255);

  randomSeed(counter * 1000);
  float nAleatorio = random(100);
  String nAleatorioFormatado = nf(nAleatorio, 2, 6); 
  char[] nAleatorioLista = nAleatorioFormatado.toCharArray();

  float colunaLargura = width/3;
  float linhaAltura = height/3;

  translate(colunaLargura * 0.2, linhaAltura * 0.8);

  for (int i = 0; i <= 2; i ++) {
    for (int j = 0; j <= 2; j ++) {
      int index = (j + (3 * i));
      text(nAleatorioLista[index], colunaLargura * j, linhaAltura * i);
    }
  }

  //saveFrame("###.png");
  if (counter == 10) {
    exit();
  }
  counter++;
}