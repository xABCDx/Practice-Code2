PVector loc, vel, acc;
PVector loc2, vel2, acc2;
int sz = 50;
int sz2 = 150;


void setup() {
  size(700, 500); 
  //initializing loc, vel, acc
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  loc2 = new PVector(width*.25, height*.25);
  vel2 = new PVector.random2D();
  acc2 = new PVector(0,0);
}


void draw() {
  background(0);

  //move the balls
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);

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

