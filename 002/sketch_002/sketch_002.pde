int counter = 1;

void setup() {
 size(500, 500);
 colorMode(HSB,10);
 background(10);
 stroke(0);
 strokeWeight(3);
}

void draw() {
  
  background(map(counter, 0, 10, 10, 0));
  
  saveFrame("###.png");
  
  if (counter == 10) {
    exit();
  }
  println(counter);
  counter++;
  
}