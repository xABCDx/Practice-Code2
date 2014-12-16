class Fireworks {
  PVector loc, vel, acc;
  float sz;
  float life;

  Fireworks(float tempsz) {
    sz = tempsz;
    loc = new PVector(mouseX, mouseY);
    vel = PVector.random2D();
    acc = PVector(0,.1);
    life = 250;
    lifeSpan = life;
    decay = 1;
    opacity = map(life, 0, lifespan, 250);
  }
  
  void display(){
   ellipse(loc.x, loc.y, sz, sz);
  }
  
  void move(){
   vel.add(acc);
   loc.add(vel); 
  }
  
  void update(){
    life -= decay;
    opacity = map(life, 0, lifespan, 250);
  }
  
}

