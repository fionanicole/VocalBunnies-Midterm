import processing.sound.*;
PImage pinkbunny;

class Pinkbunny {  
  boolean isPlaying = false;
  boolean isDisplay = true;

  Pinkbunny(PApplet p) {
    isPlaying = false;
    isDisplay = true;
  }

  void pinkbunnyDrawing() {
    image(pinkbunny, width/2, height/2, 500, 500);
    isDisplay = true;
  }


//I couldn't figure out how to make the pinkbunny 'vanish' easily, so I used the push and pop matrix trick to have it move off screen when another bunny is shown
  void displayBunnyPink() {
    if (!keyPressed) {
      pinkbunnyDrawing();
    }
    if (keyPressed) {
      if (key == 'a') {
        pushMatrix();
        translate(1000.0, 1000.0);
        pinkbunnyDrawing();
        popMatrix();
      }
      if (key == 's') {
        pushMatrix();
        translate(1000.0, 1000.0);
        pinkbunnyDrawing();
        popMatrix();
      }
      if (key == 'd') {
        pushMatrix();
        translate(1000.0, 1000.0);
        pinkbunnyDrawing();
        popMatrix();
      }
      if (key == 'f') {
        pushMatrix();
        translate(1000.0, 1000.0);
        pinkbunnyDrawing();
        popMatrix();
      }
    }
  }
}
