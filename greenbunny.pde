import processing.sound.*;
PImage greenbunny;

class Greenbunny {
  SoundFile issound;
  boolean isPlaying = false;
  boolean isDisplay = false;

//same goes for this one and the last two, I changed the audio to 1,2,3,4 instead of "singing is so fun"
  Greenbunny(PApplet p) {
    issound = new SoundFile(p, "twosound.wav");
    isPlaying = true;
    isDisplay = true;
  }

//plays the sound
  void playGreenbunnyIs() {
    issound.play();
    delay(600);
    isPlaying = true;
  }

//displays the image
  void greenbunnyDrawing() {
    image(greenbunny, width/2, height/2, 500, 500);
  }

//displays and plays when the 2 key is pressed
  void displayBunnyGreen() {
    if (keyPressed) {
      if (key=='2') {
        playGreenbunnyIs();
        if (isPlaying = true) {
          greenbunnyDrawing();
        }
      }
    }
  }
}
