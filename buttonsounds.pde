import processing.sound.*;
boolean isPlaying = false;

class Buttonsound {
  SoundFile bluebuttonsound;
  SoundFile greenbuttonsound;
  SoundFile monobuttonsound;
  SoundFile orangebuttonsound;
  
  Buttonsound(PApplet p) {
    bluebuttonsound = new SoundFile(p, "bluebutton.wav");
    greenbuttonsound = new SoundFile(p, "greenbutton.wav");
    monobuttonsound = new SoundFile(p, "monobutton.wav");
    orangebuttonsound = new SoundFile(p, "orangebutton.wav");
   
  }

  void playBluebutton() {
    noLoop();
    bluebuttonsound.play(1,0.25);
    isPlaying = true;
    loop();
  }
  
  void playGreenbutton() {
    noLoop();
    greenbuttonsound.play(1,0.25);
    isPlaying = true;
    loop();
  }
  
  void playMonobutton() {
    noLoop();
    monobuttonsound.play(1,0.25);
    isPlaying = true;
    loop();
    
  }
  void playOrangebutton() {
    noLoop();
    orangebuttonsound.play(1,0.15);
    isPlaying = true;
    loop();
  }
}
