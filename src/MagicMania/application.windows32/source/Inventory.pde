//By Kevin 

class Inventory {
  //memeber variables
  int x, y;
  color c;
  //constructor
  Inventory(color c) {
    this.c = c;
  }
  //memeber methods
  void display() {
    fill(c);
    rect(20, 20, 350, height-300);
    fill(0,0,255);
    text("Inventory \nPress E to go back to \n play screen",100,50);
  }
}
