class shapeGen { 
  float ypos;
  float xpos;
  float xwidth;
  float ywidth;
  
  float H; //0-360
  float S; //0-100
  float B; //0-11
  
  
  shapeGen(float xpos, float ypos, float xwidth, float ywidth){
    colorMode(HSB, 360, 100, 100);
    this.xpos = xpos; 
    this.ypos = ypos;
    this.xwidth = xwidth;
    this.ywidth = ywidth;
    
    H = random(0, 255);  //random gives float or int?
    S = random (05, 90);
    B = 80.0f;
    
    
  }
  
  void update(){
    S-= log( random(200));
    
    if (mouseX > xpos && mouseX < xpos + xwidth   &&
        mouseY > ypos && mouseY < ypos + ywidth) {
        if  (mousePressed)
          H = (H + random(10, 340)) % 360;
          
        S = 95;  
   }////////End mouse IF

  
 }
  
  void draw(){
    fill(H,S,B,250);
    noStroke();
    rect(xpos,ypos, xwidth, ywidth);
    
    this.update();
  }
    
    
}

