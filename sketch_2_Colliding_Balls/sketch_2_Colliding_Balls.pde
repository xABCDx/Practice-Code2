
int count = 50;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] sz = new float[count];


void setup() {
  size(700, 500); 
  //initializing loc, vel, acc
  for(int i = 0; i < count; i++){
   sz[i] = random(10,50);
   loc[i] = new PVector(random(sz[i], width - sz[i]), random(sz[i], height - sz[i]));
   vel[i] = PVector.random2D();
   acc[i] = new PVector(0,0);
  }
}


void draw() {
  background(0);
 
  
  //move the ball
  for(int i = 0; i < count; i++){
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
  }
  
  //check to see if circles are touching
  for(int j = 0; j < count; j++){
   if(i != j){
     if(loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2){
      print("COLLISION DETECTED   ");
       if(loc[i].x < loc[j].x){
        vel[i].x = -abs(vel[i].x);
        vel[j].x = abs(vel[j].x); 
       } else {
        vel[i].x = abs(vel[i].x);
        vel[j].x = -abs(vel[j].x); 
       }
       if(loc[i].y < loc[j].y){
        vel[i].y = -abs(vel[i].y);
        vel[j].y = abs(vel[j].y);
       } else {
        vel[i].y = abs(vel[i].y);
        vel[j].y = -abs(vel[j].y); 
       }
     }
   }  
  }  
  
  //draw the ball
  fill(255,0,0);
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  //bounce the ball
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  if(loc2.x + sz2/2 > width || loc2.x - sz2/2 < 0){
   vel2.x *= -1;
  }
  if(loc2.y + sz2/2 > height || loc2.y - sz2/2 < 0){
   vel2.y *= -1; 
  }



}

