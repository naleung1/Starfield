Particle [] bob = new Particle [1500];
void setup() {
  size (700, 700);

  for (int i = 0; i < bob.length; i++) {
    bob [i] = new Particle();
  }
  for (int i = 1000; i < 1030; i++) {
    bob [i] = new OddballParticle();
  }
  background(255);
}


void draw() {
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].move();
  }
}

void mousePressed()
{
  background (255);
  for (int i = 0; i < bob.length; i++) {
    bob [i] = new Particle();
  }
  for (int i = 1000; i < 1030; i++) {
    bob [i] = new OddballParticle();
  }
}

class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = 350;
    myY = 350;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*7+4;
    myColor = color ((int)(Math.random()*0), (int)(Math.random()* 256), (int)(Math.random()* 256));
  }
  void show() {
    fill (myColor);
    ellipse((float) myX, (float) myY, 10, 10);
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
}

class OddballParticle extends Particle {
  OddballParticle() {
    myX = 350;
    myY = 350;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*15+4;
    myColor = color(255, 0, 0);
  }
}
