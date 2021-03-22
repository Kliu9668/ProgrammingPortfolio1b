class PowerUp {
  //member variables
  int x, y, speed, pu, rad;
  String[] puInfo = {"Ammo", "Health", "Laser", "Super"};

  //constructor
  PowerUp(int x, int y) {
    this.x = x;
    this.y = y;
    speed = int(random(5,7));
    pu = int(random(3));
    rad = 10;
  }
  boolean reachedBottom() {
    if (y > height) {
      return true;
    } else {
      return false;
    }
  }
  void move() {
    y += speed;
  }

  //member methods
  void display() {
    noStroke();
    switch(pu) {
    case 0: //Health
      fill(#00FF28);
      triangle(x+5, y-10, x-15, y, x+5, y+10);
      triangle(x+10, y, x-10, y-10, x-10, y+10);
      break;
    case 1: //Lasers
      fill(#00FACE);
      triangle(x+5, y-10, x-15, y, x+5, y+10);
      triangle(x+10, y, x-10, y-10, x-10, y+10);
      break;
    case 2: //Super Weapon
      fill(#8600F5);
      triangle(x+5, y-10, x-15, y, x+5, y+10);
      triangle(x+10, y, x-10, y-10, x-10, y+10);
      break;
    }
  }
}
