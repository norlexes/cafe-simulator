//CAFE SIMULATOR

import g4p_controls.*;
ArrayList<String> ingredients = new ArrayList<String>();
ArrayList<String> blackCoffee = new ArrayList<String>();
int numClicks = 0;
Boolean fail = false;
PImage tmi;
PImage pass;
PImage welcome;
PImage menuSc;
Boolean draw_welcome = true, draw_Menu1 = false, draw_Menu2 = false, draw_Menu3 = false, start_button = true;
Menu coffee; //variable for the menu

void setup(){
  size(1280,650);
  createGUI();
  blackCoffee.add("C");
  blackCoffee.add("C");
  blackCoffee.add("C");
  println(blackCoffee);
}

void draw(){
  changeScreens();  
}
