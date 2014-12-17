class Fireworks {
  PVector loc, vel, acc;
  float sz;
  float life;
  float lifeSpan;
  float decay;

  Fireworks(float tempsz) {
    sz = tempsz;
    loc = new PVector(mouseX, mouseY);
    vel = new PVector (random (-2,2), -3);
    acc = new PVector(0,.1);
    life = 250;
    lifeSpan = life;
    decay = 1;
//    opacity = map(life, 0, lifespan, 250);
  }
  
  void display(){
   fill(255, 60, 85, 80);
   ellipse(loc.x, loc.y, sz, sz);
  }
  
  void move(){
   vel.add(acc);
   loc.add(vel); 
  }
  
  void update(){
    life -= decay;
//    opacity = map(life, 0, lifespan, 250);
  }
  
}


