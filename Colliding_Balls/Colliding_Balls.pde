PVector loc, vel, acc;
int sz = 50;


void setup(){
 size(700,500); 
 //initializing loc, vel, acc
 loc = new PVector(width/2, height/2);
 vel = PVector.random2D();
 acc = new PVector(0,0);
 
}


void draw(){
background(0);

//moving the ball
vel.add(acc);
loc.add(vel);

//check to see if mouse is inside the circle
if(dist(mouseX, mouseY, loc.x, loc.y) < sz/2){
 fill(255,0,0); 
}
else{
 fill(0,255,0); 
}

//draw the ball
ellipse(loc.x, loc.y, sz, sz);

//bounce the ball
if(loc.x + sz/2 > width || loc.x - sz/2 < 0){
 vel.x *= -1;
}
if(loc.y + sz/2 > height || loc.y - sz/2 < 0){
 vel.y *= -1; 
}

//draw a small circle to indicate mouse location
  fill(200,150,0);
 ellipse(mouseX, mouseY, 15, 15);
}


