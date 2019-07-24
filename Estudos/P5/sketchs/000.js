let counter = 1;
let canvasSize = 800;

function setup() {
    createCanvas(canvasSize, canvasSize);
    background(0);
}

function draw() {
  if (counter <= 100) {
      um();

      let name = '000' + '-' + counter;
      console.log(name);
      // saveCanvas(name, 'png');
      counter++;
  }
}


function um() {
    colorMode(HSB, 100);
    background(100 - counter);
}
