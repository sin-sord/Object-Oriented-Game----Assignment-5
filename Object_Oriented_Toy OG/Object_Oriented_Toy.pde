Player PLYR = new Player();
Line LN = new Line();
Wall WL = new Wall();
Road RD = new Road();
Obstacle OBS = new Obstacle();


void setup() {
  size(1200, 800);
  for (int i =0; i<xpos.length-1; i++) {
    xpos[i]=0;
    ypos[i]=0;
  }
}



void draw() {
  //draws the background
  background(0);

  //---------------------------------------------------------The Road
  RD.roadDraw();

  WL.Lights();
  //---------------------------------------------------------The Back Wall
  // draws the walls at the back edge of the road
  WL.backWall();

  //---------------------------------------------------------The Line
  //draws the lines on the road
  LN.drawLine();

  //---------------------------------------------------------The player
  // draws the barrel
  OBS.drawObstacle();
  //allows the barrel to move
  OBS.ObstacleMove();

  //---------------------------------------------------------The player
  // draw the players
  PLYR.PLYRavatar();

  //allows the controls over the car for the player
  PLYR.keyPressed();
  PLYR.keyReleased();

  //set the boundaries for the player
  PLYR.Bound();

  // the lights the player can toggle
  PLYR.carLights();

  WL.Lights();

  //---------------------------------------------------------The Front Wall
  //draws the wall at the front edge of the road
  WL.frontWall();


  //draws text so the player knows the controls
  fill(255);
  textSize(20);
  text("use WASD to move", 20, 25);
  text("left-click for lights", 200, 25);
}
