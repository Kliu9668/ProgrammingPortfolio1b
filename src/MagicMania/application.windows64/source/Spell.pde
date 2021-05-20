//By Kevin and William

class Spell {
  //member variables
  String name, description;
  int x, y, h, w;
  boolean over, display, clicked;
  //constructor
  Spell(String name, int x, int y, int h, int w, String description, Boolean display, Boolean clicked) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.display = display;
    this.clicked = clicked;
    this.description = description;
  }
  //member methods
  void display() {
    if (display == true) {
      stroke(0);
      if (over) {
        fill(0);
        textSize(25);
        text(description, 400, 650);
      } else {
        fill(#0024FF);
      }

      rect(x, y, w, h);
      fill(255, 0, 0);
      textSize(15);
      text(name, x+30, y+50);
    }
  }
  void hover() {
    over = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
  void mousePressed() {
    if(over) {
      clicked = true;
      openSpellBook = false;
    }
  }
}
