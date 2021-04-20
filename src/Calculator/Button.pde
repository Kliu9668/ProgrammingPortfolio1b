class Button {
  //Member variables 
  int x, y, w, h;
  color c1, c2, c3, c4;
  String val;
  boolean over;

  //Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, color c1, color c2 ) {
    this.x = tempX;
    this.y = tempY;
    this.w = tempW;
    this.h = tempH;
    this.c1 = c1;
    this.c2 = c2;
    this.c3 = #03FF00;
    this.c4 = #F6FF00;
    this.val = tempVal;
  }

  //Display Method
  void display() {
    stroke(0);
    if (over) {
      fill(c2);
    } else {
      fill(c1);
    }
    
    rect(x, y, w, h);
    fill(255, 0, 0);
    textSize(25);
    text(val, x+30, y+50);
  } 
  //Hover Method
  void hover(int tempX, int tempY) {
    over = tempX>x-w/2 && tempX<x+w/2 && tempY>y-h/2 && tempY<y+h/2;
  }
}
