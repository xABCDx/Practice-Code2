ArrayList<Fireworks> f = new ArrayList<Fireworks>();

void setup() {
  size(800, 600);
}

void draw() {
  background(0);

  if (mousePressed) {
    f.add(new Fireworks(random(2, 5)));
  }
  for (int i = 0; i < f.size (); i++) {
    Fireworks c = f.get(i);
    c.display();
    c.move();
    c.update();
  }
  
}

