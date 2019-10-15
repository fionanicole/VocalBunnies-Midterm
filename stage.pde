class Stage {
  int xPos;
  int yPos;
  int circleSize;

  color circleHighlightBlue;
  color circleHighlightGreen;
  color circleHighlightMono;
  color circleHighlightOrange;
  color circleRegBlue;
  color circleRegGreen;
  color circleRegMono;
  color circleRegOrange;

  boolean blueClicked = false;
  boolean greenClicked = false;
  boolean monoClicked = false;
  boolean orangeClicked = false;
  


  Stage() {
    xPos = 200;
    yPos = 900;
    circleSize = 100;

    circleHighlightBlue = color(153, 214, 255);
    circleHighlightGreen = color(153, 255, 153);
    circleHighlightMono = color(255, 102, 102);
    circleHighlightOrange = color(255, 214, 153);

    circleRegBlue = color(0, 153, 255);
    circleRegGreen = color(0, 204, 0);
    circleRegMono = color(255, 0, 0);
    circleRegOrange = color(255, 153, 51);
  }

  void actualstage() {
    fill(255, 204, 0);
    ellipse(width/2, 450, 550, 550);
    fill(153, 102, 51);
    rect(width/2, height*2/3, 600, 210);
  }

//when the buttons are rolled over or clicked, they change the color of the lighting behind the stage
  void buttonblue() {
    if (mouseX>150 && mouseY>850 && mouseX<250 && mouseY<950 && mousePressed==true) {
      fill(circleRegBlue);
      ellipse(xPos, yPos, circleSize, circleSize);
      blueClicked = true;
    } else if(mouseX>150 && mouseY>850 && mouseX<250 && mouseY<950) {
      fill(circleHighlightBlue);
      ellipse(xPos, yPos, circleSize, circleSize);
      blueClicked = false;
    } else {
      fill(circleRegBlue);
      ellipse(xPos, yPos, circleSize, circleSize);
      blueClicked = false;
    }
  }

  void buttongreen() {
    if (mouseX>350 && mouseY>850 && mouseX<450 && mouseY<950 && mousePressed==true) {
      fill(circleRegGreen);
      ellipse(xPos+200, yPos, circleSize, circleSize);
      greenClicked = true;
    } else if (mouseX>350 && mouseY>850 && mouseX<450 && mouseY<950) {
      fill(circleHighlightGreen);
      ellipse(xPos+200, yPos, circleSize, circleSize);
      greenClicked = false;
    } else {
      fill(circleRegGreen);
      ellipse(xPos+200, yPos, circleSize, circleSize);
      greenClicked = false;
    }
  }

  void buttonmono() {
    if (mouseX>550 && mouseY>850 && mouseX<650 && mouseY<950 && mousePressed==true) {
      fill(circleRegMono);
      ellipse(xPos+400, yPos, circleSize, circleSize);
      monoClicked = true;
    } else if (mouseX>550 && mouseY>850 && mouseX<650 && mouseY<950) {
      fill(circleHighlightMono);
      ellipse(xPos+400, yPos, circleSize, circleSize);
      monoClicked = false;
    } else {
      fill(circleRegMono);
      ellipse(xPos+400, yPos, circleSize, circleSize);
      monoClicked = false;
    }
  }

  void buttonorange() {
    if (mouseX>750 && mouseY>850 && mouseX<950 && mouseY<950 && mousePressed==true) {
      fill(circleRegOrange);
      ellipse(xPos+600, yPos, circleSize, circleSize);
      orangeClicked = true;
    } else if (mouseX>750 && mouseY>850 && mouseX<950 && mouseY<950) {
      fill(circleHighlightOrange);
      ellipse(xPos+600, yPos, circleSize, circleSize);
      orangeClicked = false;
    } else {
      fill(circleRegOrange);
      ellipse(xPos+600, yPos, circleSize, circleSize);
      orangeClicked = false;
    }
  }

  void curtains() {
    fill(200, 0, 0);
    triangle(200, 0, 400, 0, 200, 400);
    triangle(200, 400, 200, 770, 400, 770);
    triangle(600, 0, 800, 0, 800, 400);
    triangle(800, 400, 800, 770, 600, 770);
    ellipse(220, 400, 50, 50);
    ellipse(780, 400, 50, 50);
  }

  void lights() {
    
    fill(255,95);
    triangle(200.0, 600.0, 400.0, 0.0, 600.0, 600.0);
    triangle(800.0, 600.0, 600.0, 0.0, 400.0, 600.0);
    
    if (blueClicked) {
      fill(153, 214, 255,95);
      triangle(200.0, 600.0, 400.0, 0.0, 600.0, 600.0);
      triangle(800.0, 600.0, 600.0, 0.0, 400.0, 600.0);
      buttonsounds.playBluebutton();
    }
    
    if (greenClicked){
      fill(153, 255, 153, 95);
      triangle(200.0, 600.0, 400.0, 0.0, 600.0, 600.0);
      triangle(800.0, 600.0, 600.0, 0.0, 400.0, 600.0);
      buttonsounds.playGreenbutton();
    }
    
    if (monoClicked){
      fill(255, 102, 102, 95);
      triangle(200.0, 600.0, 400.0, 0.0, 600.0, 600.0);
      triangle(800.0, 600.0, 600.0, 0.0, 400.0, 600.0);
      buttonsounds.playMonobutton();
    }
    
    if (orangeClicked){
      fill(255, 140, 26, 95);
      triangle(200.0, 600.0, 400.0, 0.0, 600.0, 600.0);
      triangle(800.0, 600.0, 600.0, 0.0, 400.0, 600.0);
      buttonsounds.playOrangebutton();
    }
  }
}
