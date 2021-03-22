class SpaceShip {
  //member variables
  int x, y, health, rad;
  color c;

  //constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    this.c = c;
    rad = 25;
  }

  //Rock  vs. Ship Collision
  boolean rockIntersection(Rock rock) {
    float distance = dist(x, y, rock.x, rock.y);
    if (distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }
  //PowerUp vs. Ship Collision
  boolean puIntersection(PowerUp pu) {
    float distance = dist(x, y, pu.x, pu.y);
    if (distance < rad + pu.rad) {
      return true;
    } else {
      return false;
    }
  }

  //EnemyShip vs Ship
  boolean shipIntersect(EnemyShip enemy) {
    float distance = dist(x, y, enemy.x, enemy.y);
    if (distance < rad + enemy.rad) {
      return true;
    } else {
      return false;
    }
  }

  //EnemyLaser vs Ship
  boolean enemyLaserIntersect(EnemyLaser elaser) {
    float distance = dist(x, y, elaser.x, elaser.y);
    if (distance < rad + elaser.rad) {
      return true;
    } else {
      return false;
    }
  }

  //member methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    //Second layer (Pink)
    rectMode(CENTER);
    fill(c);
    stroke(0);
    rect(x+35, y+8, 2, 15);
    rect(x-35, y+8, 2, 15);
    stroke(#FF00FF);
    line(x+20, y+8, x+20, y-8);
    line(x-20, y+8, x-20, y-8);
    //line(x, y-40, x, y-60);
    stroke(0);
    triangle(x, y-20, x+40, y+15, x-40, y+15);
    ellipse(x, y, 20, 80); 
    //First Layer
    fill(0, 0, 255);
    rect(x, y, 20, 50);
    fill(255, 0, 0);
    triangle(x+10, y-25, x-10, y-25, x, y-50);
    fill(0, 255, 0);
    triangle(x+10, y, x+10, y+25, x+25, y+25);
    triangle(x-10, y, x-10, y+25, x-25, y+25);
  }
}
