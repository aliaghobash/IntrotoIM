
PImage img;
PFont font;
PImage img2;
int radius = 40;
float x = width/6;
float y = height/6;
float speed =6.5;

void setup() {
  img = loadImage("ghost.png");
  img2 = loadImage("mySpiral.png");
  font = createFont("Trattatello", 48);
  size(900, 900);
  ellipseMode(CENTER);
};
void draw() {

  background(#FFA500);
  hexgrid();
  candy();
  image(img, x-100, y+5);
  points();
  reset();
}

//-----------------MOVE CHARACHTER WITH ARROW KEYS----------------//

void keyPressed() {
  if (key == CODED) {
    if (keyCode == DOWN) {

      image(img, x-100, y+5);
      x+=1*speed ;
      y+=1*speed ;
    } else if (keyCode == UP) {

      x-=1*speed ;
      y-=1*speed ;
    }
  } 
  if (keyCode == RIGHT) {

    x+=1*speed ;
  }
  if (keyCode == LEFT) {

    x-=1*speed ;
  }
}

//-------------GUIDE FOR CHARACTER TO MOVE TO SECRET PASSAGE----------------//
void points() {
  for (int i = 20; i < width; i += 40) { // change to candies
    if (x + radius/2< i) {
      fill(255);
      strokeWeight(0);
      rect(i, i, 10, 10);
      text("distance moved: "+ x, 10, 10);// point system
    }
  }
  //----------GAME OVER PAGE--------------//
  if (x >800) {
    rectMode(CENTER);
    strokeWeight(30);
    fill(255);
    rect(width/2, height/2, 850, 850);// worked
    textSize(40);
    textFont(font);
    fill(0);
    text("Press the r key to reset", height/2-100, width/2);
    text("BOO!!", height/2, width/2-200);
  }
  //----------START PAGE--------------//
  if (x<30) {
    rectMode(CENTER);
    strokeWeight(30);
    fill(255);
    rect(width/2, height/2, 850, 850);// worked
    fill(#800020);
    fill(0);
    textSize(26);
    //add text with intstructions.
    textFont(font);
    text("Helloooo! ", height/2-100, 100);
    text("Welcome to The Shining themed ghost game ", 100, width/2-200);
    text("Use the arrow keys to start the game. ", 100, width/2-100);
    text("You need to move the ghost towards ", 100, width/2+0);
    text("the door to unlock the secret..Shhhh", 100, width/2+100);
    text("Make sure you dont crash with the ", 100, width/2+200);
    text(" falling droplets!", 100, width/2+300);
    text("GoodLuck!", 100, width/2+400);
  }
};

//--------------RESET POSITION OF THE GHOST--------------------//

void reset() {
  if (x >800) {
    if (keyPressed == true) {
      if (key == 'r') { //click r to reset! 
        setup();
        x=0;
        y=0;
        image(img, x, y);
      }
    }
  };
};

//----------------door + GIF --------------------------------//
void door() {
  
};
