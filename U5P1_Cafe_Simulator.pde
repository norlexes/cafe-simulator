//CAFE SIMULATOR

import g4p_controls.*;
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
  changeScreens(); 
}
