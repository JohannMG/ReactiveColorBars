ArrayList rects;
float rectWidth;
int rectCount;


void setup(){
  
  size(500, 500);
  rectCount = 20;
  rectWidth = (float)width / (float)rectCount;
  rects = new ArrayList();
  
  for (int i = 0; i < rectCount; i++){
    rects.add(  new shapeGen(i + rectWidth * i , 0, rectWidth, height) ) ;
  }
  
}


void draw(){
  background (255);
  for (int i = 0; i < rects.size(); i++) {
     shapeGen s  = (shapeGen) rects.get(i); 
     s.draw();
  }
  
}


void update(){
  
}
