class Tringle {

  PVector pos;
  boolean R;
  float size;

  Tringle(float _x, float _y, boolean _r, float _s) {
    pos = new PVector(_x, _y);
    R = _r;
    size = _s;
  }

  void display() {
    beginShape();
    vertex(size/4, ((size/4) * sqrt(3)));
    vertex(-size/4, -((size/4) * sqrt(3)));
    if (R) {
      vertex((size - size/4), -size/4 * sqrt(3));
    } else {
      vertex(-(size - size/4), size/4 * sqrt(3));
    }
    endShape(CLOSE);
  }
}
