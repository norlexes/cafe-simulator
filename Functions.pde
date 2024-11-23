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
 
  if(draw_welcome == true){
    //Call the function to load the image
    drawWelcomeScreen();
    //Change visibility of GUI elements
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    Menu.setVisible(false);
    entername.setVisible(false);
  }
 
  if(draw_welcome == false){
    //Define background color
    background(222,163,80);
    //Calling the drawCup() function so 
    //that the cup is drawn when the welcome screen is not visible
    drawCup();
    //Change visibility of GUI elements
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    Menu.setVisible(true);
    button5.setVisible(false);
    entername.setVisible(true);
    //Render menu and ingredients
    drawMenuScreen(); 
    drawIngredients();
  }
 
  if (ingredients.size() > 3){
    //function if too many ingredients are added
    //load fail screen
    tmi = loadImage("failTooManyIngredients.png");
    //change visibility of GUI elements
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    draw_Menu1 = false; 
    draw_Menu2 = false; 
    draw_Menu3 = false; 
    Menu.setVisible(false);
    entername.setVisible(false);
    image(tmi,0,0);
  }
  
  if(draw_Menu1 == true){
    //draw backrgound and cup
    background(222,163,80);
    drawCup();
    //change visibility of GUI elements
    menuSettings();
    //draw ingredients and create new variable of menu class
    drawIngredients(); 
    coffee = new Menu("black");
    //println("<black> chosen.");
    //draw menu element
    coffee.drawMenu();
    Menu.setVisible(false);    
  }
  
  if(draw_Menu2 == true){
    //render background and cup
    background(222,163,80);
    drawCup();
    //change button visibility
    menuSettings();
    //render ingredients
    drawIngredients(); 
    //define and render menu object
    coffee = new Menu("cafe au lait");
    coffee.drawMenu();
    //println("<cafe au lait> chosen.");
    Menu.setVisible(false);
    
  }
  
  if(draw_Menu3 == true){
    //render background and cup
    background(222,163,80);
    drawCup();
    //change button visibility 
    menuSettings();
    //render ingredients 
    drawIngredients(); 
    //define and render menu variable
    coffee = new Menu("espresso");
    coffee.drawMenu();
    Menu.setVisible(false);    
    
  }
  
  if(enter_name == false){
    //hide submit box when not in use
    entername.setVisible(false); 
  }
 
  if(ingredients.size() == 3){
    //win scenerio for black coffee menu
    if(coffee.cofType == "black" && ingredients.equals(blackCoffee)){ 
      win();
    }

    //win scenerio for cafe au lait menu
    if(coffee.cofType == "cafe au lait" && ingredients.equals(cafeAuLait)){
      win();
    }

    //win scenario for espresso menu
    if(coffee.cofType == "espresso" && ingredients.equals(espresso)){
      win();
    }
  }
}

void menuSettings(){
  //change visibility of GUI elements for when menu is drawn
  button1.setVisible(true);
  button2.setVisible(true);
  button3.setVisible(true);
  button4.setVisible(true);
  entername.setVisible(false);
  Menu.setVisible(false);
}

void win(){
  //load success image
  pass = loadImage("successScreen.png");
  //hide buttons and render image
  button1.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  Menu.setVisible(false);
  image(pass,0,0);
  button1.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  button4.setVisible(false);
  entername.setVisible(false);
  image(pass,0,0);      
}
