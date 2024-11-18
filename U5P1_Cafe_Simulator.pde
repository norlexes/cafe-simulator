//CAFE SIMULATOR

import g4p_controls.*;
boolean clickInButtonCof = false;
boolean clickInButtonMilk = false;
boolean clickInButtonEspresso = false;
ArrayList<PVector> clickCount; 
Menu coffee; //variable for the menu
ArrayList<String> ingredients = new ArrayList<String>();
int numClicks = 0;
Boolean fail = false;
PImage tmi;
PImage welcome; 
Boolean draw_welcome = true; 

void setup(){
  size(1280,650);
  createGUI();
}

void draw(){

  pushStyle();
  
  drawCup();
    
  popStyle();
  
  float IngredientX = 500; 
  float IngredientY = 0; 
  
  if(clickCount.size() == 1){
   
    IngredientY = 450; 
    
  }
  
  if(clickCount.size() == 2){
   
    IngredientY = 350; 
    
  }
  
  if(clickCount.size() == 3){
   
    IngredientY = 250; 
    
  }
  
  if(clickInButtonCof == true){
    pushStyle();
    fill(81, 65, 47); 
    stroke(81, 65, 47); 
    rect(IngredientX, IngredientY, 300, 100); 
     popStyle(); 
  }
  
  if(clickInButtonMilk == true){ 
    fill(254, 252, 234); 
    stroke(254, 252, 234); 
    rect(IngredientX, IngredientY, 300, 100); 
  }
   
   if(clickInButtonEspresso == true){
   pushStyle();
    fill(50, 34, 21); 
    stroke(50, 34, 21);
    rect(IngredientX, IngredientY, 300, 100);
     popStyle(); 
  }
  
}

void mousePressed(){
  
  //Checking if the mouse clicks the Add Coffee button
  float addCoffeeLeftX = 1060;
  float addCoffeeTopY = 88;
  float addCoffeeRightX = 1200;
  float addCoffeeBottomY = 178;
  
  if (addCoffeeLeftX < mouseX && mouseX < addCoffeeRightX && addCoffeeTopY < mouseY && mouseY < addCoffeeBottomY) {
    clickInButtonCof = true; 
  }
  
  //Checking if the mouse clicks the Add Milk button
  float addMilkLeftX = 1061;
  float addMilkTopY = 226;
  float addMilkRightX = 1201;
  float addMilkBottomY = 326;
  
  if (addMilkLeftX < mouseX && mouseX < addMilkRightX && addMilkTopY < mouseY && mouseY < addMilkBottomY) {
    clickInButtonMilk = true; 
  }
  
  //Checking if the mouse clicks the Add Coffee button
  float addEspressoLeftX = 1066;
  float addEspressoTopY = 367;
  float addEspressoRightX = 1206;
  float addEspressoBottomY = 467;
  
  if (addEspressoLeftX < mouseX && mouseX < addEspressoRightX && addEspressoTopY < mouseY && mouseY < addEspressoBottomY) {
    clickInButtonEspresso = true; 
  }
  
  if(clickInButtonEspresso || clickInButtonMilk || clickInButtonCof){
   
    clickCount.add(new PVector(mouseX, mouseY)); 
    
  }
  
  

  changeScreens(); 
}
