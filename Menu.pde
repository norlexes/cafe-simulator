//MENU CLASS

class Menu{
  //FIELDS
  //The coffee type out of black, cafe au lait, and espresso.
  String cofType; 
  //The number of espresso shots, amount of milk, and amount of brewed coffee
  int espShot, milkNum, brewCofAmt; 
  
  //CONSTRUCTOR
  //The constructor later used in GUI
  //It is established as the menu is chosen from the drop down menu.
  Menu(String c){ 
    this.cofType = c;
  }
  
  //The method drawMenu(), which draws the menu
  void drawMenu(){ 
    //Establishing variables
    String esp, milk, bc; 

    //Texts for which ingredients are needed on the menu panel
    esp = "Espresso Shots: ";
    milk = "Milk Amount: ";
    bc = "Brewed Coffee Amount: ";
    
    //Menu background
    fill(139,110,70);
    rect(0,0,350,650); 
    
    //Menu title - draws the title for the menu panel
    textSize(30);
    fill(77,53,29);
    text("MENU", 50, 100);
    
    textSize(25);
    fill(0);
    //If statements for each menus
    //If the coffee type is black according to the menu drop down pressed, 
    //and lists the ingredients that are needed for this drink
    if (this.cofType == "black"){ 
      text(esp+"0", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"3", 50, 450); 
    }
    
    //If the coffee type is cafe au lait according to the menu drop down pressed, 
    //and lists the ingredients that are needed for this drink
    else if (this.cofType == "cafe au lait"){ 
      text(esp+"1", 50, 150); 
      text(milk+"2", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    
    //If the coffee type is espresso according to the menu drop down pressed, 
    //and lists the ingredients that are needed for this drink
    else if (this.cofType == "espresso"){ 
      text(esp+"3", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    
  }
  
}
