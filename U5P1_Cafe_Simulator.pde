//CAFE SIMULATOR
import g4p_controls.*;
//Arraylist which keeps trcak of added ingredients
ArrayList<String> ingredients = new ArrayList<String>();
//ArrayLists which define the recipies for each drink
ArrayList<String> blackCoffee = new ArrayList<String>();
ArrayList<String> cafeAuLait = new ArrayList<String>();
ArrayList<String> espresso = new ArrayList<String>();
//Import images
PImage tmi;
PImage pass;
PImage welcome;
PImage menuSc;
//Booleans which define what screens to draw
Boolean draw_welcome = true, draw_Menu1 = false, draw_Menu2 = false, draw_Menu3 = false, start_button = true;
Menu coffee; //variable for the menu

void setup(){
  size(1280,650);
  createGUI();
  //populate recipe arrays
  fillArray();
}

void draw(){
  changeScreens();  
}
