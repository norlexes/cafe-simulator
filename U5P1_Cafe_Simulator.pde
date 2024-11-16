//CAFE SIMULATOR

import g4p_controls.*;
ArrayList<String> ingredients = new ArrayList<String>();
int numClicks = 0;
Boolean fail = false;
PImage tmi;

void setup(){
  createGUI();
  background(222,163,80);
  size(1280,650);
  createGUI();
  size(1280,650);
  background(222,163,80);
  tmi = loadImage("failTooManyIngredients.png");
}

void draw(){

  pushStyle();
  
  drawCup();
  
  popStyle();
  
  println(ingredients);
  
  drawIngredients();
  
  if (ingredients.size() > 3){
    fail = true;
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    image(tmi,0,0);
  }
}
