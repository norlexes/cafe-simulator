//CAFE SIMULATOR

PImage welcome; 
import g4p_controls.*;
ArrayList<String> ingredients = new ArrayList<String>();
int numClicks = 0;
boolean draw_welcome = true; 

void setup(){
  size(1280,650); 
  createGUI();
}

void draw(){
  changeScreens(); 
}
