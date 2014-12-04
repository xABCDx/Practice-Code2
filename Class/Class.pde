//declare and initialize gravity ball array
GravityBall[] angela = new GravityBall[40];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //for each individual gravity ball, declare a new gravity ball
  for (int i = 0; i < angela.length; i++) {
    angela[i] = new GravityBall(map(i, 0, angela.length, 0, width), random(height/2));
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
  float hue, sat, bright, alpha;

  //fill in the template w/ actual values
  //create a constructor
  GravityBall() {
    //here initialize variables and run code that should occur at the moment the object is created
    sz = 30;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }
  
  //create an alternate constructor which allows you to control values of the ball
  GravityBall(float tempx, float tempsz){
   sz = tempsz;
  loc = new PVector(tempx, sz);
  vel = new PVector(0, 0);
  acc = new PVector(0, .1);
  hue = random(360);
  sat = 100;
  bright = 100;
  alpha = 70; 
  }

  //define what the gravity ball does
  
  //the ball: moves, bounces, acclerates, gets drawn
  void display() {
    //draw the ball
    noStroke();
    fill(hue, sat, bright, alpha);
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

