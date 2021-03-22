// SpaceGame 2020 December 
// by Kevin Liu
SpaceShip s1;
ArrayList<Star> stars;
ArrayList<PowerUp> pUps;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<EnemyShip> enemies;
ArrayList<EnemyLaser> elasers;
Timer rocktimer, putimer, enemytimer;
int score, pass, weaponCount, superWeapon;
boolean play;
import processing.sound.*;
SoundFile laser;

void setup() {
  size(500, 500);
  s1 = new SpaceShip(#FF00FF);
  stars = new ArrayList();
  pUps = new ArrayList();
  lasers = new ArrayList();
  rocks = new ArrayList();
  enemies = new ArrayList();
  elasers = new ArrayList();
  rocktimer = new Timer(int(random(500, 3000)));
  rocktimer.start();
  score = 0;
  pass = 0;
  play = false;
  putimer = new Timer(int(random(5000, 10000)));
  putimer.start();
  weaponCount = 1;
  superWeapon = 0;
  enemytimer = new Timer(int(random(5000, 7500)));
  enemytimer.start();
  laser = new SoundFile(this, "ISD-Laser4.wav");
}

void draw() {
  noCursor();
  // Gameplay
  if (!play) {
    startScreen();
  } else {
    background(0);

    stars.add(new Star(int(random(width)), int(random(height)), 255));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        rocks.remove(star);
      }
    }
    if (rocktimer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      rocktimer.start();
    }

    //Rocks
    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      //Rock vs Ship collision
      if (s1.rockIntersection(rock)) {
        s1.health-=rock.health;
        rocks.remove(rock);
        score += rock.health;
      }
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }

    if (enemytimer.isFinished()) {
      enemies.add(new EnemyShip(0, 80, 2000));
      enemytimer.start();
    }
    //Enemy Ship
    for (int i = 0; i<enemies.size(); i++) {
      EnemyShip enemy = enemies.get(i);
      enemy.move();
      enemy.display();
      if (s1.shipIntersect(enemy)) {
        s1.health -=50;
        enemies.remove(enemy);
        score += 50;
      }
      if (enemy.isFinished()) {
        laser.play();
        elasers.add(new EnemyLaser(color(255, 0, 0), enemy.x-35, enemy.y));
        elasers.add(new EnemyLaser(color(255, 0, 0), enemy.x+35, enemy.y));
        enemy.start();
      }
    }
    //Enemy Laser
    for (int i = elasers.size()-1; i>=0; i--) {
      EnemyLaser elaser = (EnemyLaser) elasers.get(i);
      elaser.fire();
      elaser.display();
      if (s1.enemyLaserIntersect(elaser)) {
        s1.health-=10;
        elasers.remove(elaser);
      }
      if (elaser.reachedBottom()) {
        elasers.remove(elaser);
      }
    }

    if (putimer.isFinished()) {
      pUps.add(new PowerUp(int(random(width)), -50));
      putimer.start();
    }
    //Powerups
    for (int i = 0; i < pUps.size(); i++) {
      PowerUp pu = pUps.get(i);
      pu.display();
      pu.move();
      //Rock vs Ship collision
      if (s1.puIntersection(pu)) {
        if (pu.pu == 0) {
          s1.health+=30;
        } else if (pu.pu == 1) { //Adds lasers
          weaponCount++;
        } else if (pu.pu == 2) { //Adds super weapon
          superWeapon++;
        }
        pUps.remove(pu);
      }
      if (pu.reachedBottom()) {
        rocks.remove(pUps);
      }
    }

    //Laser
    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      //Laser vs Rock Intersection
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.laserIntersect(laser)) {
          rock.health-=10;
          lasers.remove(laser);
          if (rock.health<1) {
            rocks.remove(rock);
            score += 30;
          }
        }
      }
      //Laser vs EnemyShip Intersection
      for (int k = 0; k<enemies.size(); k++) {
        EnemyShip enemy = enemies.get(k);
        if (enemy.laserIntersect(laser)) {
          lasers.remove(laser);
          enemy.health-=10;
          if (enemy.health<1) {
            score+=50;
            enemies.remove(enemy);
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }
    infoPanel();
    s1.display(mouseX, mouseY);

    //Gameover logic
    if (s1.health<1 || pass>5) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  laser.play();
  if (mouseButton == RIGHT && superWeapon > 0) {
    superWeapon--;
    pass = 0;
    score += 100;
    //weaponCount = 1;
    for (int i = 0; i<rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rocks.remove(rock);
    }
    rocks.removeAll(rocks);
    rocktimer.start();
    for (int i = 0; i<enemies.size(); i++) {
      EnemyShip enemy = enemies.get(i);
      enemies.remove(enemy);
    }
    enemies.removeAll(enemies);
  }
  if (weaponCount == 1) {
    lasers.add(new Laser(color(255, 0, 0), s1.x, s1.y-40));
  } else if (weaponCount == 2) {
    lasers.add(new Laser(color(255, 0, 0), s1.x+35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-35, s1.y));
  } else if (weaponCount == 3) {
    lasers.add(new Laser(color(255, 0, 0), s1.x, s1.y-40));
    lasers.add(new Laser(color(255, 0, 0), s1.x+35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-35, s1.y));
  } else if (weaponCount == 4) {
    lasers.add(new Laser(color(255, 0, 0), s1.x+35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x+20, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-20, s1.y));
  } else if (weaponCount == 5) {
    lasers.add(new Laser(color(255, 0, 0), s1.x+35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x+20, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-20, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x, s1.y-40));
  } else if (weaponCount >= 6) {
    lasers.add(new Laser(color(255, 0, 0), s1.x+35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-35, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x+20, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-20, s1.y));
    lasers.add(new Laser(color(255, 0, 0), s1.x-5, s1.y-40));
    lasers.add(new Laser(color(255, 0, 0), s1.x+5, s1.y-40));
  }
}

void startScreen() {
  background(128);
  textAlign(CENTER);
  textSize(30);
  fill(255, 255, 0);
  text("Welcome! SpaceGame", width/2, height/2);
  text("Click to continue...", width/2, height/2+50);

  if (mousePressed) {
    play = true;
  }
}

void infoPanel() {
  fill(128, 128);
  noStroke();
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(0, 255, 255);
  textSize(10);
  text("Health:" + s1.health, 50, height-20);
  text("Score:" + score, 200, height-20);
  text("Rock Pass:" + pass, 300, height-20);
  text("SuperWeapon:" + superWeapon, 400, height-20);
}

void gameOver() {
  background(255, 0, 0);
  textAlign(CENTER);
  textSize(30);
  fill(222);
  text("Game Over!", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+50);
  noLoop();
}
