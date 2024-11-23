//CAFE SIMULATOR
import g4p_controls.*;
//Arraylist which keeps track of added ingredients
//This will be used to draw the ingredients on to the screen
//The ingredients Arraylist will be iterated through to draw them
ArrayList<String> ingredients = new ArrayList<String>();
//ArrayLists which define the recipies for each drink
ArrayList<String> blackCoffee = new ArrayList<String>();
ArrayList<String> cafeAuLait = new ArrayList<String>();
ArrayList<String> espresso = new ArrayList<String>();
//Import images
//These images include the welcome screen, "excessive ingredients" screen, 
//success screen, and menu screen
PImage tmi;
PImage pass;
PImage welcome;
PImage menuSc;
//Booleans which define what items to draw
//Initially setting draw_welcome to "true" so that the first thing seen is the welcome screen
Boolean draw_welcome = true;
//These values check whether the each of the three menus are drawn 
//They are initially set to "false" because no menu is initially drawn
//when the home screen is displayed
Boolean draw_Menu1 = false; 
Boolean draw_Menu2 = false; 
Boolean draw_Menu3 = false; 
//Initially setting start_button to "true" because the user clicks this button on the welcome 
//screen upon opening the application
Boolean start_button = true; 
//Initially setting enter_name to "false" because the user will not enter their name
//unless they choose to start the simulation
Boolean enter_name = false;
//Creating an object of type coffee to establish the coffee 
//type and how many ingredients are added
Menu coffee; 

//This is the setup, where non-graphical functions are executed
void setup(){
  //Establishing the size of the screen
  size(1280,650);
  //Creating the GUI for buttons and other interactive displays
  createGUI();
  //Using the fillArray() function to fill the arrays that set what the recipes are
  fillArray();
}

//This is the draw function, where the graphical functions are executed
void draw(){
  //Calling the changeScreens() function, which sets graphical elements to visible or invisible 
  //depending on which GUI entity is selected
  changeScreens();  
}
