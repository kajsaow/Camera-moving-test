boolean wPressed, sPressed, aPressed, dPressed;

Camera camera;

Background b;


void setup() {
  rectMode(CENTER);

  fullScreen();
  //size(500, 500);
  background(180);

  camera = new Camera(5);
  b = new Background(0, 0);
}

void draw() {

  background(150);
  b.display();
  camera.display();
  b.cameraMovement();
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    wPressed = true;
  }
  if (key == 's' || key == 'S') {
    sPressed = true;
  }
  if (key == 'a' || key == 'A') {
    aPressed = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    wPressed = false;
  }
  if (key == 's' || key == 'S') {
    sPressed = false;
  }
  if (key == 'a' || key == 'A') {
    aPressed = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
  }
}
