//declare and initialize gravity ball array
GravityBall[] angela = new GravityBall[150];

void setup() {
  size(800, 600);
  //for each individual gravity ball, declare a new gravity ball
  for (int i = 0; i < angela.length; i++) {
    angela[i] = new GravityBall();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < angela.length; i++) {
    angela[i].display();
    angela[i].move(); 
    angela[i].bounce();
  }
}


class GravityBall {
  //list information about the gravity ball
  //location
  //velocity
  //accleration
  //size

  //declare variables
  PVector loc, vel, acc;
  float sz;

  //fill in the template w/ actual values
  GravityBall() {
    sz = 30;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  }

  //define what the gravity ball does
  //the ball: moves, bounces, acclerates, gets drawn
  void display() {
    //draw the ball
    fill(150, 20, 50, 100);
    noStroke();
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounces the ball
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

