Ball b;    //declare a new object of the Ball class


void setup() {
  size(800, 600);
  b = new Ball();    //initialize our new ball called b
}

void draw() {
  background(0);
  b.move();
  b.bounce();
  b.display();
}

////////////////////////////////////////////////////
// Below this is the definition of the Ball class //
////////////////////////////////////////////////////
class Ball {
  //these are the properties of our Ball class
  float sz;
  PVector loc, vel;

  Ball() {
    sz = 50;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}
