//background
int count = 100;
PImage star;
PVector [] loc = new PVector[count];
float [] sz = new float[count];
PImage moon;
//firework drawn at mouse
ArrayList<Fireworks> f = new ArrayList<Fireworks>();
//background fireworks
ArrayList<GreenFW> green = new ArrayList<GreenFW>();
int maxParticles = 35; 
ArrayList<BlueFW> blue = new ArrayList<BlueFW>();
ArrayList<PurpleFW> purple = new ArrayList<PurpleFW>();


void setup() {
  size(800, 600);
  noStroke();
  savedTime = millis();

  //background images
  moon = loadImage("the moon.png");
  star = loadImage("star.jpg");
  imageMode(CENTER);
  //initializing the location of the stars and the size
  for (int i = 0; i < count; i++) {
    sz[i] = random(5, 10);
    loc[i] = new PVector(random(width), random(height));
  }
}

void draw() {
  background(0);
  //drawing the background 
  //stars
  for (int i = 0; i < count; i++) {
    image(star, loc[i].x, loc[i].y, sz[i], sz[i]);
  }
  //moon
  image(moon, 80, 80, 200, 200);

////////////////////////////////////////////////////////////////
//firework that appears at the mouse when the mouse is pressed//
////////////////////////////////////////////////////////////////
//draw the firework when mouse is pressed
  if (mousePressed) {
    f.add(new Fireworks(random(2, 5)));
  }
  for (int i = 0; i < f.size (); i++) {
    Fireworks c = f.get(i);
    c.display();
    c.move();
  }
  //removing the particles
  if (f.size() > maxParticles) {
    f.remove(0);
  }

///////////////////////////////////////////
//Fireworks that appear in the background//
///////////////////////////////////////////

//draw the green firework
  green.add(new GreenFW(random(2, 5)));
  for (int j = 0; j < green.size (); j++) {
    GreenFW a = green.get(j);
    a.greenDisplay();
    a.greenMove();
  }
  //removing the green particles
  if (green.size() > maxParticles) {
    green.remove(0);
  }
  
//draw the blue firework
 blue.add(new BlueFW(random(2, 5)));
 for(int i = 0; i < blue.size(); i++){
 BlueFW b = blue.get(i);
 b.blueDisplay();
 b.blueMove();
 }
 //removing the blue particles
 if(blue.size() > maxParticles){
  blue.remove(0); 
 }

//draw the purple firework
 purple.add(new PurpleFW(random(2, 5)));
 for(int i = 0; i < purple.size(); i++){
 PurpleFW p = purple.get(i);
 p.purpleDisplay();
 p.purpleMove();
 }
 //removing the purple particles
 if(purple.size() > maxParticles){
  purple.remove(0); 
 }
 
}


