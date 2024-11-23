//CAFE SIMULATOR
import g4p_controls.*;
//Arraylist which keeps track of the ingredients added by th user
//this will be compared to the correct recipies for success case
//this also activates the fail case if the length of the arraylist gets above 3
ArrayList<String> ingredients = new ArrayList<String>();
//ArrayLists which define the recipies for each drink
//these are populated with one-character values
//the ingredients string will be compared to one of these
//depending on which menu is chosen, they will be compared to determine if the drink is correct
ArrayList<String> blackCoffee = new ArrayList<String>();
ArrayList<String> cafeAuLait = new ArrayList<String>();
ArrayList<String> espresso = new ArrayList<String>();
//Import images
PImage tmi;
PImage pass;
PImage welcome;
PImage menuSc;
//booleans which define which screen to draw
Boolean draw_welcome = true, draw_Menu1 = false, draw_Menu2 = false; 
Boolean draw_Menu3 = false, start_button = true, enter_name = false;
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
