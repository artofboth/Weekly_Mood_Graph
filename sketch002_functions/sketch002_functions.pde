
int [] mood;
int [] weekDays;


void setup(){
  size(1500,500);
  smooth(20);
    noLoop();
   
  weekDays = new int[8];
  //assigning a value to each array section. 
  for (int i= 0; i<8; i++){
  weekDays[i] = i+1;
  }
  
  mood = new int[8];
  mood[0] = 2;
  mood[1] = 9;
  mood[2] = 8;
  mood[3] = 6;
  mood[4] = 7;
  mood[5] = 2;
  mood[6] = 0;

}

int moodPos(int i){
  int y = height - (height/11 * mood[i]);
  return y;
}
  
// returns X position according to week day
int dayPos(int i){
  int x = width/(weekDays.length) * weekDays[i];
  return x;
}

void keyPressed() {
 if (keyCode == ENTER) {
 saveFrame("screen-####.png");
 }
}

void draw(){

  stroke(0);
  strokeWeight(3);
  noFill();
  background (255);

  //ellipse (dayPos(i),moodPos(i),20,20);
  
  for(int i=0; i<7; i++){
    
  ellipse (dayPos(i),moodPos(i),20,20);
    if(dayPos(i)>moodPos(i)){
    fill(255, 0, 0);
    } 
    else if(dayPos(i)<moodPos(i)){
    fill(0,0,255);}

  }
  

   beginShape();
   noFill();
   curveVertex(dayPos(0),moodPos(0));
   curveVertex(dayPos(0),moodPos(0));
   curveVertex(dayPos(1),moodPos(1));
   curveVertex(dayPos(2),moodPos(2));
   curveVertex(dayPos(3),moodPos(3));
   curveVertex(dayPos(4),moodPos(4));
   curveVertex(dayPos(5),moodPos(5));
   curveVertex(dayPos(6),moodPos(6));
   curveVertex(dayPos(7),moodPos(7));
   endShape();

    
}
  
  
