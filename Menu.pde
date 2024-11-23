//MENU CLASS

class Menu{
  //FIELDS:
  String cofType; //coffee type from black, cafe au lait, and espresso.
  int espShot, milkNum, brewCofAmt; //espresso shots, amount of milk, amount of brewed coffee
  
  //CONSTRUCTOR
  Menu(String c){ //constructor later used in GUI
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
    
    //Menu title
    textSize(30);
    fill(77,53,29);
    text("MENU", 50, 100);
    
    textSize(25);
    fill(0);
    if (this.cofType == "black"){ //if statements for each menus
      text(esp+"0", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"3", 50, 450); 
    }
    else if (this.cofType == "cafe au lait"){
      text(esp+"1", 50, 150); 
      text(milk+"2", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    else if (this.cofType == "espresso"){ 
      text(esp+"3", 50, 150); 
      text(milk+"0", 50, 300); 
      text(bc+"0", 50, 450); 
    }
    
  }
  
}
