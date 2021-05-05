PVector camPos;
PVector camRot;
float amplitude;
TringleGrid t;

void setup() {
  size(1440, 1080, P3D);
  //fullScreen(P3D);
  amplitude = 200;
  t = new TringleGrid(-300, -300, 200, 200, 0.0025, 10);
  camPos = new PVector(width/2, height/2, height/2);
  camRot = new PVector(0, 0, 0);
  //frameRate(10);
}

void draw() {
  background(0);
  camera(camRot.x , camRot.y , (camPos.z) / tan(PI/6), camPos.x, camPos.z, camPos.y, 0, 1, 0);
  fill(0);
  //noFill();
  stroke(0, 255, 0);
  t.display();
  cameraControl();
}

void cameraControl() {
  if(mousePressed){
    if(mouseButton == LEFT){
      camPos.x += pmouseX - mouseX;
      camPos.y += pmouseY - mouseY;
    }
    if(mouseButton == RIGHT){
      camRot.x += pmouseX - mouseX;
      camRot.y += pmouseY - mouseY;
    }
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(e < 0){
    camPos.z /= 1.1;
  } else {
    camPos.z *= 1.1;
  }
}

void keyPressed(){
  if(key == 'e'){
  save("Picture("+ (int) random(20000) +").png");
  exit();
  }
  
  if(key == 'w'){
  amplitude+= 10;
  }
  
  if(key == 's'){
  amplitude -= 10;
  }
}
