class Laser {
  //member variables
  int x, y, speed, rad;
  color c;
  //constructor
  Laser(color c, int x, int y) {
    this.x = x;
    this.y = y;
    this.c = c;
    speed = 5;
    rad = 1;
  }

  boolean reachedTop() {
    if (y < 0) {
      return true;
    } else {
      return false;
    }
  }
  //member methods
  void display() {
    fill(c);
    stroke(255, 0, 0);
    //noStroke();
    rectMode(CENTER);
    rect(x, y, rad, rad*10);
  }
  void fire() {
    y-=speed;
  }
}
