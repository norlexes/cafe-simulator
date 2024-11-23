//MENU CLASS

class Menu{
  //FIELDS
  String cofType; //coffee type from black, cafe au lait, and espresso.
  int espShot, milkNum, brewCofAmt; //espresso shots, amount of milk, amount of brewed coffee
  
  //CONSTRUCTOR
  Menu(String c){ //constructor later used in GUI, is established as the menu is chosen from the drop down menu.
    this.cofType = c;
  }
  
  void drawMenu(){ //draws the menu
    //establish variables
    String esp, milk, bc; //texts for the ingredients needed
    esp = "Espresso Shots: ";
    milk = "Milk Amount: ";
    bc = "Brewed Coffee Amount: ";
    
    fill(139,110,70);
    rect(0,0,350,650); //menu background
    
    //Menu title - draws the title for the menu panel
    textSize(30);
    fill(77,53,29);
    text("MENU", 50, 100);
    
    textSize(25);
    fill(0);
    //if statements for each menus
    if (this.cofType == "black"){ //if the coffee type is black according to the menu drop down pressed, and lists the ingredients that are needed for this drink
      text(esp+"0", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"3", 50, 450); 
    }
    else if (this.cofType == "cafe au lait"){ //if the coffee type is cafe au lait according to the menu drop down pressed, and lists the ingredients that are needed for this drink
      text(esp+"1", 50, 150); 
      text(milk+"2", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    else if (this.cofType == "espresso"){ //if the coffee type is espresso according to the menu drop down pressed, and lists the ingredients that are needed for this drink
      text(esp+"3", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    
  }
  
}
