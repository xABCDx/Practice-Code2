PVector loc, vel, acc;

PVector mouse;
int sz = 50;


void setup() {
  size(700, 500); 
  //initializing loc, vel, acc
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  mouse = new PVector ();
  noCursor();
}


void draw() {
  background(0);

  mouse.set (mouseX, mouseY);
  //moving the ball
  vel.add(acc);
  loc.add(vel);

  //check to see if mouse is inside the circle
  if (loc.dist(mouse) < sz/2) {
    fill(255, 0, 0);
    vel.mult(-1);
  } else {
    fill(0, 255, 0);
  }

  //draw the ball
  ellipse(loc.x, loc.y, sz, sz);

  //bounce the ball
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }

  //draw a small circle to indicate mouse location
  fill(200, 150, 0);
  ellipse(mouse.x, mouse.y, 15, 15);
}

