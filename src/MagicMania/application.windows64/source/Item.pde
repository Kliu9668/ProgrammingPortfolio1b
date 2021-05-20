//By Macy and Kevin

class Item {
  //member variables
  int x, y, h, w;
  String name, description;
  boolean over, display;
  //constructer
  Item(String name, int x, int y, int h, int w, String description, Boolean display) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.description = description;
    this.display = display;
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
        fill(#FA03EE);
      }

      rect(x, y, w, h);
      fill(255);
      textSize(15);
      text(name, x+30, y+50);
    }
  }

  void hover() {
    over = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
}
