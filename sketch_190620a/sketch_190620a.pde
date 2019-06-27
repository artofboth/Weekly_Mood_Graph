float x;
float y;
Walker w;


void setup(){
  size (800,800);
  w= new Walker(); 
  background (255);
}

void Walker(){}

void draw(){
  w.render(); 
  w.step();
}
