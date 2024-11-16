//MENU CLASS

class Menu{
  //FIELDS:
  String cofType;
  int espShot, milkNum, brewCofAmt; //espresso shots, amount of milk, amount of brewed coffee
  
  //CONSTRUCTOR
  Menu(String c){
    this.cofType = c;
  }
  
  void checkMenu(){
    if (this.cofType == "black"){
      this.espShot = 0;
      this.milkNum = 0;
      this.brewCofAmt = 3;
      println("black");
    }
    else if (this.cofType == "cafe au lait"){
      this.espShot = 1;
      this.milkNum = 2;
      this.brewCofAmt = 0;
      println("cafe au lait");
    }
    else if (this.cofType == "espresso"){
      this.espShot = 3;
      this.milkNum = 0;
      this.brewCofAmt = 0;
      println("espresso");
    }
  }
  
  
  void drawMenu(){
    //establish coordinates
    String esp, milk, bc; //texts for the ingredients needed
    esp = "Espresso Shots: ";
    milk = "Milk Amount: ";
    bc = "Brewed Coffee Amount: ";
    fill(139,110,70);
    rect(0,0,350,650); //menu background
    
    //Recipe title
    textSize(30);
    fill(77,53,29);
    text("RECIPE", 50, 100);
    
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
