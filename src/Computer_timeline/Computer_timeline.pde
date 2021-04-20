 // Kevin Liu | Computer Timeline
// Sept. 2020
boolean hover = false;

void setup() {
  size(900, 400);
}

void draw() {
  background(128);
  println(hover);
  drawRef();
  histEvent(75, 200, 125, 25, "Atanaoff-Berry(US)", "1942, by John Vincent Atanasoff, designed to solve systems of linear equations.", true);
  histEvent(150, 275, 125, 25, "Colossus Mark 1(UK)", "February 1944, by Tommy Flowers, uses thermionic values to perform Boolean and counting operations", false);
  histEvent(225, 200, 125, 25, "Harvard Mark I(US)", "May 1944, by Howard Akien, reads instructions from punched paper tape to compute mathmatical tables", true);
  histEvent(300, 275, 125, 25, "Z4(Germany)", "March 1945, by Konrad Zuse, combinations of mechanical memory and electromechanical logic", false);
  histEvent(375, 200, 125, 25, "ENIAC(US)", "February 1946, by John Mauchly and Presper Eckert, solves numerical problems through reprogramming", true);
  histEvent(450, 275, 125, 25, "Manchester Baby(UK)", "June 1948, by Frederic Williams, Tom Kilburn, and Georff Tootill, designed as a testbed for the Williams tube", false);
  histEvent(525, 200, 150, 25, "Manchester Mark 1(UK)", "April 1949, by Fredrice Williams and Tom Kilburn, uses index registers to read an array of words in memory", true);
  histEvent(600, 275, 125, 25, "EDSAC(UK)", "November 1949, by Maurice Wikles, calculates a table of square numbers and a list of prime numbers", false);
}

void drawRef() {
  // Draws the timeline
  strokeWeight(5);
  stroke(100, 255, 100);
  line(100, 250, 800, 250);

  // Draws the title info
  textAlign(CENTER);
  textSize(36);
  text("Computer Timeline", width/2, 65);

  //Descriptive text
  textSize(12);
  text("Kevin Liu | 2020", width/2, 85);
}

void histEvent(int x, int y, int w, int h, String title, String description, boolean top) {
  //  Detection of the mouseover 
  hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);

  // Draw a rectangle
  strokeWeight(2);
  if (hover == true) {
    fill(0, 255, 255); 
    text(description, 250, 350);
  } else {
    fill(225);
  }
  rect(x, y, w, h, 5);

  // Text overlay
  textAlign(LEFT);
  fill(0);
  text(title, x+5, y+20);
  // Connecting line to the timeline
  if (top == true) {
    line(x+20, y+25, x+35, y+50);
  } else {
    line(x+20, y, x+35, y-25);
  }
}
