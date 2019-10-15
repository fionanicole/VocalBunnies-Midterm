import processing.sound.*;
PImage monobunny;

class Monobunny {
  SoundFile sosound;
  boolean isPlaying = false;
  boolean isDisplay = false;

//see explanation of sound under bluebunny and greenbunny
  Monobunny(PApplet p) {
    sosound = new SoundFile(p, "threesound.wav");
    isPlaying = true;
    isDisplay = true;
  }

  void playMonobunnySo() {
    sosound.play();
    delay(600);
  }

  void monobunnyDrawing() {
    image(monobunny, width/2, height/2, 500, 500);
  }

  void displayBunnyMono() {
    if (keyPressed) {
      if (key=='3') {
        playMonobunnySo();
        if (isPlaying = true) {
          monobunnyDrawing();
        }
      }
    }
  }
}
