//By Kevin, William, and Macy

Item[] items = new Item[10];
Spell[] spells = new Spell[10];
BackGround[] backgrounds = new BackGround[17];
ContinueButton[] contiButtons = new ContinueButton[18];
Inventory inventory;
SpellBook spellbook;
String LocationName;
boolean play, openInventory, openSpellBook;
PImage StartScreen;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
  backgrounds[0] = new BackGround(300, 300, "Bedroom", "Welcome to the game! Your mother is sick and you need to save her!", "Talk to your mother? A - Yes B - No", "\nYou FOOL!! Your Mother soon dies because you refuse to talk to her \n go back and rethink your decision", "You talk with your mother \n She says the only way for you to save her is to learn magic\n She gives you a mysterious Locket, you set off to save her.", true, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[1] = new BackGround(300, 300, "StorageRoom", "Find the things you need. A - Garbage bin B - Desk", "You find a SpellBook in the Desk \n You look inside it and see two spells in it called Jump and Fire", "\nTheres nothing useful in a garbage bin because everything is trash... like you \n go back and look harder", "Blank", false, false, false, false, "#2 bcgnd-1.png.png");
  backgrounds[2] = new BackGround(300, 300, "Outside", "Now that you have a spell book to learn magic, you go outside to start your quest \n A - Woods, B - City", "You get attacked by wolves as soon as you enter, you drag yourself back to your house \n go back and find another place to go", "You think that the city is a great place to start your quest\n you take a path to get there", "Blank", false, false, false, false, "#3 bcgnd-1.png.png");
  backgrounds[3] = new BackGround(300, 300, "Path", "As you travel to the city, you see a boulder blocking the path\n You decide to try out your jump spell\n Hint: click Jump in your spell book", "You jumped over the boulder\n You see the city as you congratulate yourself for using your first spell", "Blank", "Blank", false, false, false, false, "#4 bcgnd-1.png.png");
  backgrounds[4] = new BackGround(300, 300, "City", "You come upon a grey, ugly city. You probably need something here", "You see a suspicious note on the ground, pick it up? A-No B-Yes", "\n Why wouldn't you want to pick it up? I thought you'd love that kind of thing, try again", "\nOn the note it says Pierce and Distract, you figure out that they are spells", false, false, false, false, "#5 bcgnd-1.png.png");
  backgrounds[5] = new BackGround(300, 300, "Confronting Bully", "HEY!!!!!!!! Says the Bully \n A - Bye B - Hi", "YOU HAVE MY SPELLS, I'm gonna need that note back...", "\n\nI don't want any cowards playing this game, go talk to him...", "You don't want to give back the bully's spells \nbut you'll have fight him to keep the spells", false, false, false, false, "#6 background-1.png.png");
  backgrounds[6] = new BackGround(300, 300, "Battle With Bully", "You realize that the bully is better at fighting than you \ntry using a spell that'll lure his attention away", "The bully is distracted \nnow quickly use another one to finish him off", "AHHHH!!! screams the bully as he burns to a crisp \n\nEnd of demo", "You stab the bully on the chest, blood gushes out of his wound until he is dead \n\nEnd of demo", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[7] = new BackGround(300, 300, "Castle", "Full Version: 501 Not Implemented \n(It'll happen when Magic Mania 2 happens)", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[8] = new BackGround(300, 300, "Knight Confrontation", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[9] = new BackGround(300, 300, "Knight Battle P1", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[10] = new BackGround(300, 300, "Knight Battle P2", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[11] = new BackGround(300, 300, "Chained Up", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[12] = new BackGround(300, 300, "Cell", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[13] = new BackGround(300, 300, "Hallway", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[14] = new BackGround(300, 300, "Throne Room", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[15] = new BackGround(300, 300, "Queen Battle P1", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  backgrounds[16] = new BackGround(300, 300, "QueenBattle P2", "Blank", "Blank", "Blank", "Blank", false, false, false, false, "#1 bcgnd-1.png.png");
  contiButtons[0] = new ContinueButton(200, 900, 50, 100, "Next", true, false);
  contiButtons[1] = new ContinueButton(200, 900, 50, 100, "A", false, false);
  contiButtons[2] = new ContinueButton(400, 900, 50, 100, "B", false, false);
  contiButtons[3] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[4] = new ContinueButton(400, 900, 50, 100, "B", false, false);
  contiButtons[5] = new ContinueButton(200, 900, 50, 100, "A", false, false);
  contiButtons[6] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[7] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[8] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[9] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[10] = new ContinueButton(200, 900, 50, 100, "A", false, false);
  contiButtons[11] = new ContinueButton(400, 900, 50, 100, "B", false, false);
  contiButtons[12] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[13] = new ContinueButton(200, 900, 50, 100, "A", false, false);
  contiButtons[14] = new ContinueButton(400, 900, 50, 100, "B", false, false);
  contiButtons[15] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[16] = new ContinueButton(200, 900, 50, 100, "Next", false, false);
  contiButtons[17] = new ContinueButton(200, 900, 50, 100, "???", false, false);
  items[0] = new Item("Spell\nBook", 50, 150, 100, 100, "You need a book to cast spells? \nI just memorize them", false);
  items[1] = new Item("Locket", 150, 150, 100, 100, "Useless starter item", false);
  items[2] = new Item("Bully\nSpells", 50, 250, 100, 100, "You touch bully's stuff?? \nyou in big trouble now...", false);
  items[3] = new Item("Knight\nKey", 150, 250, 100, 100, "Use this as a weapon \nto open people's minds...", false);
  items[4] = new Item("Lockpick\nNote", 50, 350, 100, 100, "Guess you don't need \nkeys anymore", false);
  items[5] = new Item("Chamber\nKey", 150, 350, 100, 100, "Key to a door that you can't \nlockpick for some reason", false);
  items[6] = new Item("Chains", 50, 450, 100, 100, "No idea why you \nwould need these", false);
  items[7] = new Item("Lock", 150, 450, 100, 100, "I thought your goal is to unlock doors, \nnot lock em up again", false);
  items[8] = new Item("Vault\nKey", 50, 550, 100, 100, "Another fine addition \nto your key collection", false);
  items[9] = new Item("Goblet", 150, 550, 100, 100, "Congrats!! \nYou beat the game!!!", false);
  spells[0] = new Spell("Jump", 50, 150, 100, 100, "The most basic move \nYet you need a spell for it", false, false);
  spells[1] = new Spell("Fire", 150, 150, 100, 100, "That starter spell \neveryone spams throughout the game", false, false);
  spells[2] = new Spell("Pierce", 50, 250, 100, 100, "Ha Ha sword \ngoes stab stab", false, false);
  spells[3] = new Spell("Distract", 150, 250, 100, 100, "Be careful with this one \nYou could also get distracted by it", false, false);
  spells[4] = new Spell("Snatch", 50, 350, 100, 100, "How to be a theif 101", false, false);
  spells[5] = new Spell("Lockpick", 150, 350, 100, 100, "How to be a criminal 101", false, false);
  spells[6] = new Spell("Freeze", 50, 450, 100, 100, "Another spell for you to spam", false, false);
  spells[7] = new Spell("Blind", 150, 450, 100, 100, "Eye penetration", false, false);
  spells[8] = new Spell("Slow", 50, 550, 100, 100, "Why use slow \nwhen you have freeze?", false, false);
  spells[9] = new Spell("Heal", 150, 550, 100, 100, "The only useful spell", false, false);
  play = false;
  openInventory = false;
  openSpellBook = false;

  String LocationName = backgrounds[0].locationName;
  this.LocationName = LocationName;
}
void draw() {
  // Gameplay
  if (!play) {
    startScreen();
  } else {
    background(255);
    infoPanel();
    backgrounds[0].display();
    //Inventory and SpellBook displays
    if (openInventory==true) {
      inventory.display();
    }
    if (openSpellBook==true) {
      spellbook.display();
    }
    for (int i=0; i<backgrounds.length; i++) {
      backgrounds[i].dialogue();
    }
    if (openInventory == true) {
      for (int i=0; i<items.length; i++) {
        items[i].display();
        items[i].hover();
      }
    }
    if (openSpellBook == true) {
      for (int i=0; i<spells.length; i++) {
        spells[i].display();
        spells[i].hover();
      }
    }
    for (int i=0; i<contiButtons.length; i++) {
      contiButtons[i].display();
      contiButtons[i].hover();
    }

    //Story Sequence
    if (contiButtons[0].clicked == true) {
      backgrounds[0].dialogueOne = false;
      backgrounds[0].dialogueTwo = true;
      backgrounds[0].dialogueThree = false;
      contiButtons[0].display = false;
      contiButtons[2].display = true;
      contiButtons[1].display = true;
    } 
    if (contiButtons[1].clicked == true) {
      backgrounds[0].dialogueTwo = false;
      backgrounds[0].dialogueFour = true;
      backgrounds[0].dialogueThree = false;
      contiButtons[1].display = false;
      contiButtons[2].display = false;
      contiButtons[3].display = true;
      items[1].display = true;
    } else if (contiButtons[2].clicked == true) {
      backgrounds[0].dialogueThree = true;
      contiButtons[2].display = false;
    } 
    if (contiButtons[3].clicked == true) {
      backgrounds[0].dialogueTwo = false;
      backgrounds[1].dialogueOne = true;
      backgrounds[0].dialogueFour = false;
      backgrounds[1].dialogueThree = false;
      backgrounds[1].dialogueFour = false;
      contiButtons[3].display = false;  
      contiButtons[1].display = false;
      contiButtons[4].display = true;
      contiButtons[5].display = true;
      backgrounds[1].display();
      LocationName = backgrounds[1].locationName;
    } 
    if (contiButtons[4].clicked == true) {
      backgrounds[1].dialogueTwo = true;
      backgrounds[1].dialogueOne = false;
      backgrounds[1].dialogueThree = false;
      backgrounds[1].dialogueFour = false;
      contiButtons[4].display = false;
      contiButtons[5].display = false;
      contiButtons[6].display = false;
      items[0].display = true;
      spells[0].display = true;
      spells[1].display = true;
    } else if (contiButtons[5].clicked == true) {
      backgrounds[1].dialogueThree = true;
      backgrounds[1].dialogueFour = false;
    } 
    if (contiButtons[0].clicked == true) {
      backgrounds[0].dialogueOne = false;
      backgrounds[0].dialogueTwo = true;
      backgrounds[0].dialogueThree = false;
      contiButtons[0].display = false;
      contiButtons[2].display = true;
      contiButtons[1].display = true;
    } 
    if (contiButtons[1].clicked == true) {
      backgrounds[0].dialogueTwo = false;
      backgrounds[0].dialogueFour = true;
      backgrounds[0].dialogueThree = false;
      contiButtons[1].display = false;
      contiButtons[2].display = false;
      contiButtons[3].display = true;
      items[1].display = true;
    } else if (contiButtons[2].clicked == true) {
      backgrounds[0].dialogueThree = true;
      contiButtons[2].display = false;
    } 
    if (contiButtons[3].clicked == true) {
      backgrounds[0].dialogueTwo = false;
      backgrounds[1].dialogueOne = true;
      backgrounds[0].dialogueFour = false;
      backgrounds[1].dialogueThree = false;
      backgrounds[1].dialogueFour = false;
      contiButtons[3].display = false;  
      contiButtons[1].display = false;
      contiButtons[4].display = true;
      contiButtons[5].display = true;
    } 
    if (contiButtons[4].clicked == true) {
      backgrounds[1].dialogueTwo = true;
      backgrounds[1].dialogueOne = false;
      backgrounds[1].dialogueThree = false;
      contiButtons[4].display = false;
      contiButtons[5].display = false;
      contiButtons[6].display = true;
      items[0].display = true;
      spells[0].display = true;
      spells[1].display = true;
    } else if (contiButtons[5].clicked == true) {
      backgrounds[1].dialogueThree = true;
      contiButtons[5].display = false;
    } 
    if (contiButtons[6].clicked == true) {
      backgrounds[1].dialogueTwo = false;
      backgrounds[2].dialogueOne = false;
      backgrounds[2].dialogueTwo = false;
      backgrounds[2].dialogueThree = true;
      contiButtons[7].display = true;
      contiButtons[6].display = false;
      backgrounds[2].display();
      LocationName = backgrounds[2].locationName;
    } 
    if (contiButtons[7].clicked == true) {
      //backgrounds[2].dialogueOne = false;
      backgrounds[3].dialogueOne = true;
      backgrounds[2].dialogueThree = false;
      contiButtons[7].display = false;
      backgrounds[3].display();
      LocationName = backgrounds[3].locationName;
    } 
    if (spells[0].clicked == true) {
      backgrounds[3].dialogueTwo = true;
      backgrounds[3].dialogueOne = false;
      contiButtons[8].display = true;
    } 
    if (contiButtons[8].clicked == true) {
      backgrounds[3].dialogueTwo = false;
      backgrounds[4].dialogueOne = true;
      contiButtons[8].display = false;
      contiButtons[9].display = true;
      LocationName = backgrounds[4].locationName;
      backgrounds[4].display();
    }
    if (contiButtons[9].clicked == true) {
      backgrounds[4].dialogueOne = false;
      backgrounds[4].dialogueTwo = true;
      contiButtons[10].display = true;
      contiButtons[11].display = true;
      contiButtons[9].display = false;
    } 
    if (contiButtons[11].clicked == true) {
      backgrounds[4].dialogueFour = true;
      backgrounds[4].dialogueThree = false;
      contiButtons[10].display = false;
      contiButtons[11].display = false;
      contiButtons[12].display = true;
      spells[2].display = true;
      spells[3].display = true;
      items[2].display = true;
    } else if (contiButtons[10].clicked == true) {
      backgrounds[4].dialogueThree = true;
      contiButtons[10].display = false;
    }
    if (contiButtons[12].clicked == true) {
      backgrounds[4].dialogueTwo = false;
      backgrounds[4].dialogueFour = false;
      backgrounds[5].dialogueOne = true;
      LocationName = backgrounds[5].locationName;
      backgrounds[5].display();
      contiButtons[13].display = true;
      contiButtons[14].display = true;
      contiButtons[12].display = false;
    }
    if (contiButtons[14].clicked == true) {
      backgrounds[5].dialogueOne = false;
      backgrounds[5].dialogueTwo = true;
      backgrounds[5].dialogueThree = false;
      contiButtons[15].display = true;
      contiButtons[14].display = false;
      contiButtons[13].display = false;
    } else if (contiButtons[13].clicked == true) {
      backgrounds[5].dialogueThree = true;
      contiButtons[13].display = false;
    }
    if(contiButtons[15].clicked == true) {
      backgrounds[5].dialogueFour = true;
      backgrounds[5].dialogueTwo = false;
      contiButtons[16].display = true;
      contiButtons[15].display = false;
    }
    if (contiButtons[16].clicked == true) {
      backgrounds[5].dialogueFour = false;
      backgrounds[6].dialogueOne = true;
      contiButtons[16].display = false;
      LocationName = backgrounds[6].locationName; 
    }
    if (spells[3].clicked == true) {
      backgrounds[6].dialogueOne = false;
      backgrounds[6].dialogueTwo = true;
    }
    if (spells[1].clicked == true) {
      backgrounds[6].dialogueTwo = false;
      backgrounds[6].dialogueThree = true;
      contiButtons[17].display = true;
      graphicError();
    }
    if (spells[2].clicked == true) {
      backgrounds[6].dialogueTwo = false;
      backgrounds[6].dialogueFour = true;
      contiButtons[17].display = true;
      graphicError();
    }
    if(contiButtons[17].clicked == true) {
      contiButtons[17].display = false;
      backgrounds[6].dialogueFour = false;
      backgrounds[6].dialogueThree = false;
      backgrounds[7].dialogueOne = true;
    }
  }
}

void mousePressed() {
  for (int i=0; i<spells.length; i++) {
    spells[i].mousePressed();
  }
  if (contiButtons[0].display == true) {
    contiButtons[0].mousePressed();
  }
  if (contiButtons[1].display == true) {
    contiButtons[1].mousePressed();
  }
  if (contiButtons[2].display == true) {
    contiButtons[2].mousePressed();
  }
  if (contiButtons[3].display == true) {
    contiButtons[3].mousePressed();
  }
  if (contiButtons[4].display == true) {
    contiButtons[4].mousePressed();
  }
  if (contiButtons[5].display == true) {
    contiButtons[5].mousePressed();
  }
  if (contiButtons[6].display == true) {
    contiButtons[6].mousePressed();
  }
  if (contiButtons[7].display == true) {
    contiButtons[7].mousePressed();
  }
  if (contiButtons[8].display == true) {
    contiButtons[8].mousePressed();
  }
  if (contiButtons[9].display == true) {
    contiButtons[9].mousePressed();
  }
  if (contiButtons[10].display == true) {
    contiButtons[10].mousePressed();
  }
  if (contiButtons[11].display == true) {
    contiButtons[11].mousePressed();
  }
  if (contiButtons[12].display == true) {
    contiButtons[12].mousePressed();
  }
  if (contiButtons[13].display == true) {
    contiButtons[13].mousePressed();
  }
  if (contiButtons[14].display == true) {
    contiButtons[14].mousePressed();
  }
  if (contiButtons[15].display == true) {
    contiButtons[15].mousePressed();
  }
  if (contiButtons[16].display == true) {
    contiButtons[16].mousePressed();
  }
  if (contiButtons[17].display == true) {
    contiButtons[17].mousePressed();
  }
  
  //for (int i=0; i<contiButtons.length; i++) {
  //  contiButtons[i].mousePressed();
  //}
}
void keyPressed() {
  if (key == 'I' || key == 'i') {
    openInventory = true;
    openSpellBook = false;
  } 
  if (key == 'e' || key == 'E') {
    openInventory = false;
    openSpellBook = false;
  }
  if (key == 'S'|| key == 's') {
    openSpellBook = true;
    openInventory = false;
  }
}
void startScreen() {
  background(255);
  StartScreen = loadImage("Start Screen-1.png.png");
  image(StartScreen, 0, 0, 1000, 998);

  if (mousePressed) {
    play = true;
  }
}
void infoPanel() {
  fill(#C2CB5C);
  noStroke();
  rectMode(CORNER);
  rect(20, 20, 350, height-300);
  rect(20, 750, 950, 225);
  fill(255,0,0);
  textSize(20);
  text("WARNING: DO NOT RANDOMLY \nCLICK SPELLS \nIT WILL MESS UP THE GAME\n(All Buttons can only be \nclicked once) \n\nFOLLOW DIALOGUE CAREFULLY \nIf you mess up the game, \nrerun the whole thing \n(You know you've messed up \nwhen the text overlays \non top of each other) ", 50, 100);
  textSize(25);
  text("Press I to open Inventory \nPress S to open SpellBook \n\nYou are at " + LocationName,30, 550);
}

void graphicError() {
  fill(0);
  rect(390, 20, 600, 600);
  fill(255,0,0);
  textSize(20);
  text("Graphic was left out intentionally \n(We don't want to draw dead bodies)",500,300);
}
