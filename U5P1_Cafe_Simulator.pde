//CAFE SIMULATOR

//CAFE SIMULATOR

import g4p_controls.*;
ArrayList<String> ingredients = new ArrayList<String>();
int numClicks = 0;
Boolean fail = false;
PImage tmi;
PImage welcome;
Boolean draw_welcome = true, draw_Menu1 = false;
Menu coffee; //variable for the menu

void setup(){
  size(1280,650);
  createGUI();
}

void draw(){
  changeScreens();  
}
