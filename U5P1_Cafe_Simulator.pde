//CAFE SIMULATOR

import g4p_controls.*;
ArrayList<String> ingredients = new ArrayList<String>();
int numClicks = 0;

void setup(){
  createGUI();
  background(222,163,80);
  size(1280,650);
  createGUI();
  size(1280,650);
  background(222,163,80);
}

void draw(){

  pushStyle();
  
  drawCup();
  
  popStyle();
  println(ingredients);
  drawIngredients();
}
