//Left click to random face.
//Right click to roll the dice, then left to stop.
int diceSize = 400;

void setup() {

  size(400, 400);
  noLoop();
}

void draw() {
  background(255);

  //dice
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(width/2, height/2, diceSize, diceSize, diceSize/6);

  //dots
  fill(50);
  int side = int(random(1, 7));
  if (side == 1 || side == 3 || side == 5)
    ellipse(width/2, height/2, diceSize/5, diceSize/5); 
  if (side == 2 || side == 3 || side == 4 || side == 5 || side == 6) { 
    ellipse(width/2 - diceSize/4, height/2 - diceSize/4, diceSize/5, diceSize/5);
    ellipse(width/2 + diceSize/4, height/2 + diceSize/4, diceSize/5, diceSize/5);
  }
  if (side == 4 || side == 5 || side == 6) {
    ellipse(width/2 - diceSize/4, height/2 + diceSize/4, diceSize/5, diceSize/5);
    ellipse(width/2 + diceSize/4, height/2 - diceSize/4, diceSize/5, diceSize/5);
  }
  if (side == 6) {
    ellipse(width/2, height/2 - diceSize/4, diceSize/5, diceSize/5);
    ellipse(width/2, height/2 + diceSize/4, diceSize/5, diceSize/5);
  }

  //roll
  if (mousePressed && mouseButton == LEFT)
    noLoop();
}

void mousePressed() {
  loop();
}
