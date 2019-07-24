let counter = 1;
let canvasSize = 800;

function setup() {
    createCanvas(canvasSize, canvasSize);
    background(255);
}

function draw() {
  if (counter <= 100) {
      dois(counter);

      let name = '000' + '-' + counter;
      //console.log(name);
      // saveCanvas(name, 'png');
      counter++;
  }
}


function dois(passos) {
    background(255);
    strokeWeight(5);
    stroke(0);

    for (let i = 1; i <= passos; i++ ) {
        let xA = random(canvasSize);
        let yA = random(canvasSize);
        let xB = random(canvasSize);
        let yB = random(canvasSize);
        line(xA, yA, xB, yB);
    }
}
