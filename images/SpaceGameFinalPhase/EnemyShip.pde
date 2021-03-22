class EnemyShip {
  //member variables
  int x, y, health, speed, rad;
  boolean right;
  int savedTime;
  int totalTime;

  //constructor
  EnemyShip(int x, int y, int t) {
    this.x = x;
    this.y = x;
    health = 50;
    speed = 3;
    rad = 25;
    this.totalTime = t;
  }
  //member methods
  void display() {
    //Second layer
    rectMode(CENTER);
    fill(#F6FF00);
    stroke(0);
    triangle(x, y+20, x+40, y-15, x-40, y-15);
    ellipse(x, y, 20, 80);
    rect(x+35, y-8, 5, 15);
    rect(x-35, y-8, 5, 15);
    line(x+35, y+8, x+35, y-8);
    line(x-35, y+8, x-35, y-8);
  }
  void move() {
    x += speed;
    if(x >= width-0 || x <=0){
      speed *= -1;
      y +=50;
    }
  }
  
  boolean laserIntersect(Laser laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if(distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
  
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
