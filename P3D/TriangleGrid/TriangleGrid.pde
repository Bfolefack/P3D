// Programmed by Boueny Folefack
//1/21/2021
TringleGrid t;

void setup(){
  size(1000, 1000);
  t = new TringleGrid(20, 20, 100, 100, 0.05, 10);
  noStroke();
  strokeWeight(1);
}

void draw(){
  t.display();
}
