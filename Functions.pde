//The drawCup() function that draws a cup in a place
void drawCup(){
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
  rect(upperLeftX, upperLeftY, cupWidth, cupHeight, 12, 12, 72, 72);
  //Drawing the handle of the cup
  noFill();
  stroke(255, 255, 255);
  strokeWeight(40);
  float xCupHandle = upperLeftX + 430;
  float yCupHandle = upperLeftY + (cupHeight/2);
  circle(xCupHandle, yCupHandle, 275);
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
  //create x and y variables with starting values
  float IngredientX = 500;
  float IngredientY = 500;
  
  for (int i = 0; i < ingredients.size(); i++){
    //move up to draw each subsequent ingredient
    IngredientY -= 100;
    //Draw a different color bases on what the ingredient is
    //Brown for brewed coffee
    if(ingredients.get(i).equals("C")){
      fill(81, 65, 47);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    //off white for milk
    else if(ingredients.get(i).equals("M")){
      fill(254, 252, 234);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    //draker brown for espresso
    else if(ingredients.get(i).equals("E")){
      fill(50, 34, 21);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
  }  
}

void drawWelcomeScreen(){
  //define screen size, then load and draw pre-rendered welcome screen
  size(1280, 650);
  welcome = loadImage("Welcome screen.png");  
  welcome.resize(1280, 650);
  image(welcome, 0, 0);
}

void drawMenuScreen(){
  //define screen size, then load and draw pre-rendered menu screen
  size(1280, 650);
  menuSc = loadImage("Menu Screen.png");
  menuSc.resize(1280, 650);
  image(menuSc, 0, 0);
}

void changeScreens(){
 
  if(draw_welcome == true){
    //call the function to load the image
    drawWelcomeScreen();
    //change visibility of GUI elements
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    //button6.setVisible(false); 
    Menu.setVisible(false);
    entername.setVisible(false);
  }
 
  if(draw_welcome == false){
    //define background color
    background(222,163,80);
    //draw cup
    drawCup();
    //change visibility of GUI elements
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    //button6.setVisible(true); 
    Menu.setVisible(true);
    button5.setVisible(false);
    entername.setVisible(true);
    //render menu and ingredients
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
    //
    background(222,163,80);
    drawCup();
    menuSettings();
    drawIngredients(); 
    coffee = new Menu("cafe au lait");
    coffee.drawMenu();
    //println("<cafe au lait> chosen.");
    Menu.setVisible(false);
    
  }
  
  if(draw_Menu3 == true){
    background(222,163,80);
    drawCup();
    menuSettings();
    drawIngredients(); 
    coffee = new Menu("espresso");
    coffee.drawMenu();
    Menu.setVisible(false);    
    
  }
  
  if(enter_name == false){
    entername.setVisible(false); 
  }
 
  if(ingredients.size() == 3){
    if(coffee.cofType == "black" && ingredients.equals(blackCoffee)){ 
      win();
    }
    
    if(coffee.cofType == "cafe au lait" && ingredients.equals(cafeAuLait)){
      win();
    }
    
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
  pass = loadImage("successScreen.png");
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
