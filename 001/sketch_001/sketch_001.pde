int counter = 1;


void setup() {
 size(500, 500);
 background(255);
 stroke(0);
 strokeWeight(5);
}

void draw() {
  background(255);
  for (int i = 0; i < counter; i++) {
    line(random(width), random(height), random(width), random(height));
  }
  
  saveFrame("###.png");
  
  if (counter == 10) {
    exit();
  }
  println(counter);
  counter++;
  
}