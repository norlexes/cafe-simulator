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
  float IngredientX = 500;
  float IngredientY = 500;
  for (int i = 0; i < ingredients.size(); i++){
    IngredientY -= 100;
    if(ingredients.get(i).equals("C")){
      fill(81, 65, 47);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    else if(ingredients.get(i).equals("M")){
      fill(254, 252, 234);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
    else if(ingredients.get(i).equals("E")){
      fill(50, 34, 21);
      stroke(0, 0, 0);
      rect(IngredientX, IngredientY, 300, 100);
    }
  }  
}

void drawWelcomeScreen(){
  size(1280, 650);
  welcome = loadImage("Welcome screen.png");  
  welcome.resize(1280, 650);
  image(welcome, 0, 0);
}

void drawMenuScreen(){
  size(1280, 650);
  menuSc = loadImage("Menu Screen.png");
  menuSc.resize(1280, 650);
  image(menuSc, 0, 0);
}

void changeScreens(){
 
  if(draw_welcome == true){
    drawWelcomeScreen();
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    Menu1.setVisible(false);
    Menu2.setVisible(false);
    Menu3.setVisible(false);
    Menu.setVisible(false);
  }
 
  if(draw_welcome == false){
    background(222,163,80);
    drawCup();
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    Menu1.setVisible(true);
    Menu2.setVisible(true);
    Menu3.setVisible(true);
    Menu.setVisible(true);
    button5.setVisible(false);
    drawMenuScreen(); 
    drawIngredients();
  }
 
  if (ingredients.size() > 3){
    fail = true;
    tmi = loadImage("failTooManyIngredients.png");
    button1.setVisible(false);
    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
    draw_Menu1 = false; 
    draw_Menu2 = false; 
    draw_Menu3 = false; 
    Menu1.setVisible(false);
    Menu2.setVisible(false);
    Menu3.setVisible(false);
    Menu.setVisible(false);
    image(tmi,0,0);
  }
  
  if(draw_Menu1 == true){
    background(222,163,80);
    drawCup();
    button1.setVisible(true);
    button2.setVisible(true);
    button3.setVisible(true);
    button4.setVisible(true);
    drawIngredients(); 
    coffee = new Menu("black");
    //println("<black> chosen.");
    coffee.drawMenu();
    Menu1.setVisible(false);
    Menu2.setVisible(false);
    Menu3.setVisible(false); 
    Menu.setVisible(false);
    
  }
  
  if(draw_Menu2 == true){
    background(222,163,80);
    drawCup();
    button1.setVisible(true);
    button2.setVisible(true);
    button3.setVisible(true);
    button4.setVisible(true);
    drawIngredients(); 
    coffee = new Menu("cafe au lait");
    coffee.drawMenu();
    //println("<cafe au lait> chosen.");
    Menu1.setVisible(false);
    Menu2.setVisible(false);
    Menu3.setVisible(false);
    Menu.setVisible(false);
    
  }
  
  if(draw_Menu3 == true){
    background(222,163,80);
    drawCup();
    button1.setVisible(true);
    button2.setVisible(true);
    button3.setVisible(true);
    button4.setVisible(true);
    drawIngredients(); 
    coffee = new Menu("espresso");
    coffee.drawMenu();
    //println("<espresso> chosen.");
    Menu1.setVisible(false);
    Menu2.setVisible(false);
    Menu3.setVisible(false);  
    Menu.setVisible(false);    
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

void win(){
  pass = loadImage("successScreen.png");
      button1.setVisible(false);
      button2.setVisible(false);
      button3.setVisible(false);
      button4.setVisible(false);
      Menu1.setVisible(false);
      Menu2.setVisible(false);
      Menu3.setVisible(false);
      Menu.setVisible(false);
      image(pass,0,0);
}
