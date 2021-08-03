PVector camPos;

void setup() {
  camPos = new PVector(width/2, height/2, height/2);
  size(1000, 700, P3D);
}


void draw() {
  background(255);
  camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0/180.0), camPos.x , camPos.y, camPos.z, 0, 1, 0);
  translate(500, 350);
  box(50);
  if (mousePressed)
    if (mouseButton == LEFT) {
      camPos.x += pmouseX - mouseX;
      camPos.y += pmouseY - mouseY;
    }
}

void mouseWheel(MouseEvent event) {
  camPos.z += event.getCount() * 5;
}
