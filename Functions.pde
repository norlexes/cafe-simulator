//The drawCup() function that draws a cup in a place
void drawCup(){
 
  //Establishing the coordinates for the rectangle 
  //part of the cup
  float upperLeftX = 450; 
  float upperLeftY = 200; 
  //Establishing the cup's width and height
  float cupWidth = 400; 
  float cupHeight = 400; 
  //Establishing the fill and stroke colours
  fill(255, 255, 255); 
  //stroke(0, 0, 0); 
  //Drawing the rectangular part of the cup
  rect(upperLeftX, upperLeftY, cupWidth, cupHeight, 12, 12, 72, 72); 
  
  //Drawing the handle of the cup
  noFill(); 
  stroke(255, 255, 255); 
  strokeWeight(40); 
  float xCupHandle = upperLeftX + 430; 
  float yCupHandle = upperLeftY + (cupHeight/2); 
  circle(xCupHandle, yCupHandle, 275); 
  
  
}
