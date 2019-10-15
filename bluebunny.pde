import processing.sound.*;
PImage bluebunny;

class Bluebunny {
  boolean isPlaying = false;
  boolean isDisplay = false;
  SoundFile singingsound;

//though it says 'singing' I changed it to 1,2,3,4 so that it was more reminicent of a kids learning game
  Bluebunny(PApplet p) {
    singingsound = new SoundFile(p, "onesound.wav");
    isPlaying = true;
    isDisplay = true;
  }

//plays the sound
  void playBluebunnySinging() {
    singingsound.play();
    delay(600);
    isPlaying = true;
    isDisplay = true;
  }

//displays the drawing, bunnies were drawn in illustrator and pulled into the program
  void bluebunnyDrawing() {
    image(bluebunny, width/2, height/2, 500, 500);
  }

//displays the drawing when the 1 key is pressed
  void displayBunnyBlue() {
    if (keyPressed) {
      if (key=='1') {
        playBluebunnySinging();
        if (isPlaying = true) {
          bluebunnyDrawing();
        }
      }
    }
  }
}
