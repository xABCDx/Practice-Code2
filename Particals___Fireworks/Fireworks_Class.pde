//implementing a timer for transparency
int savedTime;
int totalTime = 2;
int transparency = 255;

////////////////////////////////////////////////////////////////
//firework that appears at the mouse when the mouse is pressed//
////////////////////////////////////////////////////////////////
class Fireworks {
  PVector loc, vel, acc;
  float sz;
  float velx, vely;

  Fireworks(float tempsz) {
    sz = tempsz;
    velx = random(-2, 2);
    vely = random(-4, 2);
    loc = new PVector(mouseX, mouseY);
    vel = new PVector (velx, vely);
    acc = new PVector(0, .1);
  }

  void display() {
    fill(255, 60, 85, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

}

///////////////////////////////////////////
//Fireworks that appear in the background//
///////////////////////////////////////////

//Green firework 
class GreenFW {
  PVector loc2, vel2, acc2;
  float sz2;

  GreenFW(float tempsz2) {
    sz2 = tempsz2;
    loc2 = new PVector(width/2, height*.7);
    vel2 = new PVector(random(-2, 2), random(-4, 2));
    acc2 = new PVector(0, .1);
  }
  void greenDisplay() {
    fill(0, 255, 0, transparency);
    ellipse(loc2.x, loc2.y, sz2, sz2);
    int passedTime = millis() - savedTime;
    if(passedTime > totalTime){
     transparency--;
     savedTime = millis(); 
    }
  }

  void greenMove() {
    vel2.add(acc2);
    loc2.add(vel2);
  }
}

//Blue Firework
class BlueFW {
  PVector loc3, vel3, acc3;
  float sz3;

  BlueFW(float tempsz3) {
    sz3 = tempsz3;
    loc3 = new PVector(width/4, height/3);
    vel3 = new PVector(random(-2, 2), random(-4, 2));
    acc3 = new PVector(0, .1);
  }
  void blueDisplay() {
    fill(0, 0, 255, transparency);
    ellipse(loc3.x, loc3.y, sz3, sz3);
    int passedTime = millis() - savedTime;
    if(passedTime > totalTime){
     transparency--;
     savedTime = millis(); 
    }
  }

  void blueMove() {
    vel3.add(acc3);
    loc3.add(vel3);
  }
}

//Purple firework
class PurpleFW {
  PVector loc4, vel4, acc4;
  float sz4;

  PurpleFW(float tempsz4) {
    sz4 = tempsz4;
    loc4 = new PVector(width * .75, height *.25);
    vel4 = new PVector(random(-2, 2), random(-4, 2));
    acc4 = new PVector(0, .1);
  }
  void purpleDisplay() {
    fill(150, 0, 255, transparency);
    ellipse(loc4.x, loc4.y, sz4, sz4);
    int passedTime = millis() - savedTime;
    if(passedTime > totalTime){
     transparency--;
     savedTime = millis(); 
    }
  }

  void purpleMove() {
    vel4.add(acc4);
    loc4.add(vel4);
  }
}
