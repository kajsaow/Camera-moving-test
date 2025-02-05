class Camera {
  float xpos, ypos;

  float speed;

  Camera (float _speed) {
    speed = _speed;

    xpos = width/2;
    ypos = height/2;
  }

  void display() {
    pushMatrix();

    translate(xpos, ypos);

    fill(0);
    rect(20 - xpos, 0, 15, height -20);
    rect(xpos - 20, 0, 15, height -20);
    rect(0, 20 - ypos, width - 20, 15);
    rect(0, -20 + ypos, width - 20, 15);
    
    fill(120);
    ellipse(0,0,5,5);

    popMatrix();
  }
}
