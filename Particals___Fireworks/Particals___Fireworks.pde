int count = 100;
ArrayList<Fireworks> f = new ArrayList<Fireworks>();
PImage star;
PVector [] loc = new PVector[count];
float [] sz = new float[count];
PImage moon;

void setup() {
  size(800, 600);
  moon = loadImage("the moon.png");
  star = loadImage("star.jpg");
  imageMode(CENTER);
  for(int i = 0; i < count; i++){
   sz[i] = random(5, 10);
   loc[i] = new PVector(random(width), random(height)); 
  }
}

void draw() {
  background(0);
  
   //stars
 for(int i = 0; i < count; i++){
  image(star, loc[i].x, loc[i].y, sz[i], sz[i]); 
 }
  //moon
  image(moon, 80, 80, 200, 200);
  
//draw the fireworks when mouse is pressed
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

