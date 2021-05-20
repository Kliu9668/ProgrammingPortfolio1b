//By Kevin 

class ContinueButton { 
  //memeber variables
  int x, y, h, w;
  String text;
  boolean display, over, clicked;
  
  //constructor
  ContinueButton(int x, int y,int h, int w, String text, Boolean display, Boolean clicked) {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.text = text;
    this.display = display;
    this.clicked = clicked;
  }
  //memeber methods
  void display() {
    if (display == true) {
      stroke(0);
      if (over) {
        fill(#F7F000);
      } else {
        fill(#03F9FF);
      }

      rect(x, y, w, h);
      fill(255, 0, 0);
      textSize(15);
      text(text, x+30, y+30);
    }
  }
  void hover() {
    over = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
  void mousePressed() {
    if(over) {
      clicked = true;
    }
  }
}
