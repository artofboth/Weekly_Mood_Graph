
int [] mood;
int [] weekDays;


void setup(){
  background (255);
  size(1000,300);
  
  weekDays = new int[7];
  //assigning a value to each array section. 
  for (int i= 0; i<7; i++){
  weekDays[i] = i+1;
  }
  
  mood = new int[8];
  mood[0] = 7;
  mood[1] = 8;
  mood[2] = 9;
  mood[3] = 9;
  mood[4] = 3;
  mood[5] = 5;
  mood[6] = 2;

// monday = weekday[0]; and so on

}

void draw(){
  smooth();
  stroke(0);
  strokeWeight(0);
  fill(0);
  
  for(int i=0; i<7; i++){

  int x = width/(weekDays.length+1) * weekDays[i];
  int y = height - (height/11 * mood[i]);
  int xplus;
  int yplus;
  
if (i<6){
   xplus= width/(weekDays.length+1) * weekDays[i+1];
   yplus= height - (height/11 * mood[i+1]);
  }else{
   yplus = y;
   xplus = x;
  }
  
  int daymood = mood[i];
  int nextdaymood = mood[i+1];
  
  if(daymood > nextdaymood){
    fill (255,50,50);
  } else if (daymood < nextdaymood){
    fill(50,200,255);
  }
 
  
   ellipse (x,y,20,20);
   //line(x, y, xplus, yplus);
   //curve(x+xplus, y+yplus, x, y, xplus, yplus, xplus+x, yplus+y);
   
   beginShape();
   vertex(x,y);
   curveVertex(x,y);
   curveVertex(xplus-(x/2), yplus-(y/2));
   curveVertex(xplus, yplus);
   curveVertex(xplus, yplus);
   endShape();

   }
  }
