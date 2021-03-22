class Star {
  //member variables
  int x, y;
  color c;
  //constructor
  Star(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c =c;
  }
  boolean reachedBottom() {
    if (y > height) {
      return true;
    } else {
      return false;
    }
  }
  void move() {
    y += random(2, 10);
  }

  //member methods
  void display() {
    fill(c);
    stroke(c);
    ellipse(x, y, 3, 3);
  }
}
