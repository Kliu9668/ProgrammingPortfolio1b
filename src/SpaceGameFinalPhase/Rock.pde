class Rock {
  //member variables
  int x, y, health, speed, rad;
  //constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    health = 30;
    speed = int(random(2, 5));
    rad = 50;
  }
 
  boolean reachedBottom() {
    if (y > height + 50) {
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
    //if (health>20) {
      fill(128);
      noStroke();
      rect(x, y, 50, 50);
      quad(x, y+35, x+35, y, x, y-35, x-35, y);
    //} else if (health<10) {
    //  fill(128);
    //  noStroke();
    //  rect(x, y, 25, 25);
    //  quad(x, y+20, x+20, y, x, y-20, x-20, y);
    //}
  }
   //Laser vs Rock Intersection
  boolean laserIntersect(Laser laser){
    float distance = dist(x,y,laser.x,laser.y);
    if(distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
