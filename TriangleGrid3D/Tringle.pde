class Tringle {

  PVector pos;
  boolean R;
  float size;
  float noiseScale;

  Tringle(float _x, float _y, boolean _r, float _s, float n_) {
    pos = new PVector(_x, _y);
    R = _r;
    size = _s;
    noiseScale = n_;
  }

  void display() {
    beginShape();
    vertex(size/4,
    noise(((size/4) + (pos.x * size)) * noiseScale,((size/4) * sqrt(3) + (pos.y * size)) * noiseScale) * amplitude,
    ((size/4) * sqrt(3)));
    vertex(-size/4,
    noise(((-size/4)+ (pos.x * size)) * noiseScale,(-((size/4) * sqrt(3))+ (pos.y * size)) * noiseScale) * amplitude,
    -((size/4) * sqrt(3)));
    if (R) {
      vertex((size - size/4),
      noise(((size - size/4)+ (pos.x * size)) * noiseScale,((-size/4 * sqrt(3))+ (pos.y * size)) * noiseScale) * amplitude,
      -size/4 * sqrt(3));
    } else {
      vertex(-(size - size/4),
      noise((-(size - size/4) + (pos.x * size)) * noiseScale,((size/4 * sqrt(3))+ (pos.y * size)) * noiseScale) * amplitude,
      size/4 * sqrt(3));
    }
    endShape(CLOSE);
  }
}
