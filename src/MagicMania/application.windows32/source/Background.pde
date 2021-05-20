//By William and Macy

class BackGround {

  //Member Variables
  int x, y;
  String locationName, dialogue1, dialogue2, dialogue3, dialogue4, photoName;
  PImage photo;
  boolean dialogueOne, dialogueTwo, dialogueThree, dialogueFour;

  //Constructor
  BackGround(int x, int y, String locationName, String dialogue1, String dialogue2, String dialogue3, String dialogue4, Boolean dialogueOne, Boolean dialogueTwo, Boolean dialogueThree, Boolean dialogueFour, String photoName) {
    this.x = x;
    this.y = y;
    this.photoName = photoName;
    this.locationName = locationName;
    this.dialogue1 = dialogue1;
    this.dialogue2 = dialogue2;
    this.dialogue3 = dialogue3;
    this.dialogue4 = dialogue4;
    this.dialogueOne = dialogueOne;
    this.dialogueTwo = dialogueTwo;
    this.dialogueThree = dialogueThree;
    this.dialogueFour = dialogueFour;
    photo = loadImage(photoName);
  }

  //Member Methods
  void dialogue() {
    if (dialogueOne == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue1, 100, 800);
    } else if(dialogueOne == false) {
      text("", 800, 800);
    } 
    if (dialogueTwo == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue2, 100, 800);
    } else if(dialogueTwo == false) {
      text("", 800, 800);
    }
    if (dialogueThree == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue3, 100, 800);
    } else if(dialogueThree == false) {
      text("", 800, 800);
    }
    if (dialogueFour == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue4, 100, 800);
    } else if(dialogueFour == false) {
      text("", 800, 800);
    }
  }
  void display() {
    image(photo, 390, 20, 600, 600);
  } 
}
