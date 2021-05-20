//By Kevin

class SpellBook {
  //memeber variables
  int x, y;
  color c;
  //constructor
  SpellBook(color c) {
    this.c = c;
  }
  //memeber methods
  void display() {
    fill(c);
    rect(20, 20, 350, height-300);
    fill(0,0,255);
    text("SpellBook \nPress E to go back to \n play screen",100,50);
  }
}
