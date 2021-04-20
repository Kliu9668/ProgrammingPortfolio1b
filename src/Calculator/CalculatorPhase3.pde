//2020 Calculator for Programing I
//Kevin Liu | Nov 2020

Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal;
String op;// operator to use in a calculation
float r; // What is right of the operator
float l; // what is left of the operator
float result; //the answer
boolean left;


void setup() {
  size(400, 700);
  dVal = "0";
  op = "";
  left = true;
  r = 0.0;
  l = 0.0;
  result = 0.0;
  numButtons[0] = new Button(100, 600, 100, 100, "0", #03FCFA, #000AFA);
  numButtons[1] = new Button(0, 500, 100, 100, "1", #03FCFA, #000AFA);
  numButtons[2] = new Button(100, 500, 100, 100, "2", #03FCFA, #000AFA);
  numButtons[3] = new Button(200, 500, 100, 100, "3", #03FCFA, #000AFA);
  numButtons[4] = new Button(0, 400, 100, 100, "4", #03FCFA, #000AFA);
  numButtons[5] = new Button(100, 400, 100, 100, "5", #03FCFA, #000AFA);
  numButtons[6] = new Button(200, 400, 100, 100, "6", #03FCFA, #000AFA);
  numButtons[7] = new Button(0, 300, 100, 100, "7", #03FCFA, #000AFA);
  numButtons[8] = new Button(100, 300, 100, 100, "8", #03FCFA, #000AFA);
  numButtons[9] = new Button(200, 300, 100, 100, "9", #03FCFA, #000AFA);
  opButtons[10] = new Button(0, 600, 100, 100, "+/-", #03FF00, #F6FF00);
  opButtons[11] = new Button(200, 600, 100, 100, ".", #03FF00, #F6FF00);
  opButtons[0] = new Button(0, 200, 300, 100, "Clear", #03FF00, #F6FF00);
  opButtons[1] = new Button(300, 600, 100, 100, "=", #03FF00, #F6FF00);
  opButtons[2] = new Button(300, 500, 100, 100, "+", #03FF00, #F6FF00);
  opButtons[3] = new Button(300, 400, 100, 100, "-", #03FF00, #F6FF00);
  opButtons[4] = new Button(300, 300, 100, 100, "x", #03FF00, #F6FF00);
  opButtons[5] = new Button(300, 200, 100, 100, "/", #03FF00, #F6FF00);
  opButtons[6] = new Button(0, 100, 100, 100, "%", #03FF00, #F6FF00);
  opButtons[7] = new Button(100, 100, 100, 100, "x^2", #03FF00, #F6FF00);
  opButtons[8] = new Button(200, 100, 100, 100, "sin", #03FF00, #F6FF00);
  opButtons[9] = new Button(300, 100, 100, 100, "cos", #03FF00, #F6FF00);
}
void draw() {
  background(128);
  //Show Calculator Display
  updateDisplay();

  //Display and hover Buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(#EA9007);
  rect(0, 0, width, 100);

  fill(0);
  textAlign(RIGHT);

  //Render Scaling Text
  if (dVal.length()<13) {
    textSize(32);
  } else if (dVal.length()<14) {
    textSize(28);
  } else if (dVal.length()<15) {
    textSize(26);
  } else if (dVal.length()<17) {
    textSize(24);
  } else if (dVal.length()<19) {
    textSize(22);
  } else if (dVal.length()<21) {
    textSize(20);
  } else if (dVal.length()<23) {
    textSize(18);
  } else if (dVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  text(dVal, width-15, 50);

  //Calc Reference
  fill(127);
  rectMode(CORNER);
  rect(10, 250, width-20, 52);

  textSize(9);
  textAlign(LEFT);
  fill(0);
  text("L:" + l + "R:" + r + "Op:" + op, 15, 10);
  text("Result:" + result + "Left:" + left, 15, 20);
}

void mouseReleased() {
  println("L:" + l + "R:" + r + "Op:" + op);
  println("Result:" + result + "Left:" + left);

  //Interaction with numbers
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].over && dVal.length()<20) {
      handleEvent(numButtons[i].val, true);
    }
  }
  //Interaction with operators
  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].over) {
      handleEvent(opButtons[i].val, false);
    }
  }
}

void keyPressed() {
  println("KEY:" + key + "keyCode:" + keyCode);

  if (key == '0') {
    handleEvent("0", true);
  } else if (key == '1') {
    handleEvent("1", true);
  } else if (key == '2') {
    handleEvent("2", true);
  } else if (key == '3') {
    handleEvent("3", true);
  } else if (key == '4') {
    handleEvent("4", true);
  } else if (key == '5') {
    handleEvent("5", true);
  } else if (key == '6') {
    handleEvent("6", true);
  } else if (key == '7') {
    handleEvent("7", true);
  } else if (key == '8') {
    handleEvent("8", true);
  } else if (key == '9') {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("x", false);
  } else if (key == '/') {
    handleEvent("/", false);
  } else if (key == '.') {
    handleEvent(".", false);
  } else if (key == 27 || key == DELETE) {
    handleEvent("Clear", false);
  } else if (key == 10) { //(key == CODED) {
    if (keyCode == ENTER || keyCode == RETURN) {
      handleEvent("=", false);
    }
  }
}

String handleEvent(String val, boolean num) {
  if (left & num) { // Left Number
    if (dVal.equals("0") || result == l) {
      dVal = (val);
      l = float(dVal);
    } else {
      dVal += (val);
      l = float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0") || result == l) {
      dVal = (val);
      r = float(dVal);
    } else {
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("Clear")) {
    dVal = "0";
    result = 0.0;
    left = true;
    r = 0.0;
    l = 0.0;
    op = "";
  } else if (val.equals("+")) {
    op = "+";
    left = false;
    dVal = "0";
  } else if (val.equals("-")) {
    op = "-";
    left = false;
    dVal = "0";
  } else if (val.equals("x")) {
    op = "x";
    left = false;
    dVal = "0";
  } else if (val.equals("/")) {
    op = "/";
    left = false;
    dVal = "0";
  } else if (val.equals("+/-")) {
    if (left) {
      l*= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  } else if (val.equals("%")) {
    if (left) {
      l *= 0.1;
      dVal = str(l);
    } else { 
      r *= 0.1;
      dVal = str(r);
    }
  } else if (val.equals("x^2")) {
    if (left) {
      l = sq(l);
      dVal= str(l);
    } else {
      r = sq(r);
      dVal = str(r);
    }
  } else if (val.equals("sin")) {
    if (left) {
      l = sin(radians(l));
      dVal= str(l);
    } else {
      r = sin(radians(r));
      dVal = str(r);
    }
  } else if (val.equals("cos")) {
    if (left) {
      l = cos(radians(l));
      dVal= str(l);
    } else {
      r = cos(radians(r));
      dVal = str(r);
    }
  } else if (val.equals(".") && !dVal.contains(".")) {
    dVal += (val);
  } else if (val.equals("=")) {
    performCalc();
  } 
  return val;
}



void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  l = result;
  dVal = str(result);
  left = true;
}
