class Background {
  float px,py;
  
   Background (float  _px,float _py){
     px = _px;
     py = _py;
     
   }
   
   void cameraMovement(){
     
    float moveFactor = 1;

    if ((wPressed || sPressed) && (aPressed || dPressed)) { // If moving diagnoly
      moveFactor = 1 / sqrt(2); 
    }
    


    if (wPressed) py += camera.speed * moveFactor;
    if (sPressed) py -= camera.speed * moveFactor; 
    if (aPressed) px += camera.speed * moveFactor; 
    if (dPressed) px -= camera.speed * moveFactor; 
   }
   
   void display(){
     pushMatrix();
     translate(px,py);
     
     fill(200,50,50);
  
      rect(300,210,1000,234);
      rect(1000,402,300,500);

    

     popMatrix();
   }
   
     
}
   
