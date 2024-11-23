//The drawCup() function that draws a cup in a place
void drawCup(){
  //Ensuring the cup stays on the screen before ingredients are drawn on it
  pushStyle();
  //Establishing the coordinates for the rectangle
  //part of the cup
  float upperLeftX = 450;
  float upperLeftY = 200;
  //Establishing the cup's width and height
  float cupWidth = 400;
  float cupHeight = 400;
  //Establishing the fill and stroke colours
  fill(255, 255, 255);
  stroke(255, 255, 255);
  //Drawing the rectangular part of the cup
  //The last four parameters are radii of the corners (for rounded corners)
  //The parameters start at the top left corner and go clockwise
  rect(upperLeftX, upperLeftY, cupWidth, cupHeight, 12, 12, 72, 72);
  //Drawing the handle of the cup
  //noFill is called because the handle drawn will be a circle 
  //with a thick border and orientation such that it appears as a handle
  noFill();
  //The colour of the border of the circle
  stroke(255, 255, 255);
  //The border thickness of the circle
  strokeWeight(40);
  //The position of the circle relative to the rounded rectangle's coordinates
  float xCupHandle = upperLeftX + 430;
  float yCupHandle = upperLeftY + (cupHeight/2);
  //Drawing the circle at the coordinates established earlier
  circle(xCupHandle, yCupHandle, 275);
  //Ensuring the cup stays on the screen after ingredients are drawn on it
  popStyle();
}

void fillArray(){
  //fill recipe arrays with ingredients in the correct order
  blackCoffee.add("C");
  blackCoffee.add("C");
  blackCoffee.add("C");
  cafeAuLait.add("E");
  cafeAuLait.add("M");
  cafeAuLait.add("M");
  espresso.add("E");
  espresso.add("E");
  espresso.add("E");
}

//Function that draws the ingredients upon the button click
//Does this using an ArrayList
void drawIngredients(){
  //Create x and y variables with starting values
  float IngredientX = 500;
  float IngredientY = 500;
  
  for (int i = 0; i < ingredients.size(); i++){
    //Move up to draw each subsequent ingredient
    IngredientY -= 100;
    //Draw a different color bases on what the ingredient is
    //If the user selects brown coffee, drawn a brown rectangle 
    //to show that brown coffee has been added
    if(ingredients.get(i).equals("C")){
      fill(81, 65, 47);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    //If the user selects milk, drawn an off white rectangle 
    //to show that milk has been added 
    else if(ingredients.get(i).equals("M")){
      fill(254, 252, 234);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    //If the user selects espresso, draw a darker brown rectangle 
    //to show that espresso has been added 
    else if(ingredients.get(i).equals("E")){
      fill(50, 34, 21);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
  }  
}

void drawWelcomeScreen(){
  //Define screen size, then load and draw pre-rendered welcome screen
  size(1280, 650);
  welcome = loadImage("Welcome screen.png");  
  //Adjusting the size of the welcome screen image to fit the entire screen on the application
  welcome.resize(1280, 650);
  image(welcome, 0, 0);
}

void drawMenuScreen(){
  //Define screen size, then load and draw pre-rendered menu screen
  size(1280, 650);
  menuSc = loadImage("Menu Screen.png");
  //Adjusting the size of the menu screen image to fit the entire screen on the application
  menuSc.resize(1280, 650);
  image(menuSc, 0, 0);
}

//The function that controls how the screens change 
void changeScreens(){
 
  //If the draw_welcome variable is true 
  if(draw_welcome == true){
    //Draw the welcome screen
    drawWelcomeScreen();
    //The buttons for adding ingredients are not visible
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    //The mneu is not visible
    Menu.setVisible(false);
    //The section to enter the name is not visible
    entername.setVisible(false);
  }
 
  //If the draw_welcome variable is false (upon clicking of the start button)
  if(draw_welcome == false){
    //The drawWelcomeScreen() function is not called 
    //because the menu screen is drawn now
    //Define background color
    background(222,163,80);
    //Calling the drawCup() function so 
    //that the cup is drawn when the welcome screen is not visible
    drawCup();
    //The buttons for adding ingredients are not visible 
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    //The dropdown button for selecting the menu is visible
    Menu.setVisible(true);
    //The button for starting the simulation is no longer visible 
    //because the simulation has already started after the 
    //user clicked the start button
    button5.setVisible(false);
    //The textbox to enter the user's name is visible
    entername.setVisible(true);
    //Render menu and ingredients
    drawMenuScreen(); 
    drawIngredients();
  }
 
 //If the user/worker adds more than three ingredients in the coffee cup
  if (ingredients.size() > 3){
    //The fail screen image will be drawn
    tmi = loadImage("failTooManyIngredients.png");
    //Change visibility of GUI elements
    //All buttons for adding ingredients are no longer visible
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    //The menu drawn, whether it is the first, second or third, is no longer visible
    //once the user has failed and the cup has overflown
    draw_Menu1 = false; 
    draw_Menu2 = false; 
    draw_Menu3 = false; 
    //The dropdown for selecting the menu is not visible
    Menu.setVisible(false);
    //The textbox to enter name is not visible
    entername.setVisible(false);
    image(tmi,0,0);
  }
  
  if(draw_Menu1 == true){
    //Draw backrgound and cup
    background(222,163,80);
    drawCup();
    //Change visibility of GUI elements
    //Calling the menuSettings() function, which changes button
    //visibility when a menu is drawn
    menuSettings();
    //Draw ingredients and create a new variable of menu class
    drawIngredients(); 
    coffee = new Menu("black");
    //Draw the menu element
    coffee.drawMenu();
    //Dropdown button for the menus is no longer visible
    Menu.setVisible(false);    
  }
  
  if(draw_Menu2 == true){
    //Draw backrgound and cup
    background(222,163,80);
    drawCup();
    //Change visibility of GUI elements
    //Calling the menuSettings() function, which changes button
    //visibility when a menu is drawn
    menuSettings();
    //Draw ingredients and create a new variable of menu class
    drawIngredients(); 
    //Draw the menu element
    coffee = new Menu("cafe au lait");
    coffee.drawMenu();
    //Dropdown button for the menus is no longer visible
    Menu.setVisible(false);
    
  }
  
  if(draw_Menu3 == true){
    //Draw backrgound and cup
    background(222,163,80);
    drawCup();
    //Change visibility of GUI elements
    //Calling the menuSettings() function, which changes button
    //visibility when a menu is drawn
    menuSettings();
    //Draw ingredients and create a new variable of menu class
    drawIngredients(); 
    //Draw the menu element
    coffee = new Menu("espresso");
    coffee.drawMenu();
    //Dropdown button for the menus is no longer visible
    Menu.setVisible(false);    
    
  }
  
  //If the enter_name variable is false
  if(enter_name == false){
    //Hide the name-submit box when not in use
    entername.setVisible(false); 
  }
 
 //If the number of ingredients in the cup is three
  if(ingredients.size() == 3){
    //If the ingredients added are the same as the ingredients required 
    if(coffee.cofType == "black" && ingredients.equals(blackCoffee)){ 
      //Draw the win screen
      win();
    }

    //If the ingredients added are the same as the ingredients required
    if(coffee.cofType == "cafe au lait" && ingredients.equals(cafeAuLait)){
      //Call the win() function, which draws the success screen 
      //and hides all other elements that shouldn't visible
      win();
    }

    //If the ingredients added are the same as the ingredients required
    if(coffee.cofType == "espresso" && ingredients.equals(espresso)){
      //Draw the win screen
      win();
    }
  }
}

//This function changes the visibility of GUI elements when 
//the menu is drawn
void menuSettings(){
  //The buttons for adding ingredients are visible as the user
  //can now make the coffee while reading the menu
  button1.setVisible(true);
  button2.setVisible(true);
  button3.setVisible(true);
  button4.setVisible(true);
  //The textbox for entering the name is no longer visible
  entername.setVisible(false);
  //The dropdown for the menu selection is no longer visible
  Menu.setVisible(false);
}

//The win() function, which is displays the success screen and hides unnecessary 
//GUI elements once the user succeeds in making the coffee
void win(){
  //Loading success image
  pass = loadImage("successScreen.png");
  //Hiding all GUI elements because only an image will
  //be drawn upon success, there will be nothing to click
  button1.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  Menu.setVisible(false);
  button1.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  entername.setVisible(false);
  //Drawing the success image
  image(pass,0,0);      
}
