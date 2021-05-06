class Rhombus {
  Tringle top;
  Tringle bottom;
  PVector pos;
  float size;
  float noiseScale;
  Rhombus(float x, float y, float s, float n_){
    pos = new PVector(x, y);
    top = new Tringle(0, 0, true, s);
    bottom = new Tringle(0, 0, false, s);
    size = s;
    noiseScale = n_;
  }
  
  void display(){
    push();
    translate(pos.x * size + (-pos.y * size * 0.5), pos.y * (size -  size/4));
    strokeWeight(1);
    fill(noise((pos.x * size + (-pos.y * size * 0.5) + size/4) * noiseScale, (pos.y * (size -  size/4)) * noiseScale) * 255);
    top.display();
    fill(noise((pos.x * size + (-pos.y * size * 0.5) - size/4) * noiseScale, (pos.y * (size -  size/4)) * noiseScale) * 255);
    bottom.display();
    strokeWeight(5);
    point(0,0);
    pop();
  }
}
