import processing.sound.*;
PImage orangebunny;

class Orangebunny {
  SoundFile funsound;
  boolean isPlaying = false;
  boolean isDisplay = false;

  Orangebunny(PApplet p) {
    funsound = new SoundFile(p, "foursound.wav");
    isPlaying = true;
    isPlaying = true;
  }

  void playOrangebunnyFun() {
    funsound.play();
    delay(600);
  }

  void orangebunnyDrawing() {
    image(orangebunny, width/2, height/2, 500, 500);
  }

  void displayBunnyOrange() {
    if (keyPressed) {
      if (key=='4') {
        playOrangebunnyFun();
        if (isPlaying = true) {
          orangebunnyDrawing();
        }
      }
    }
  }
}
