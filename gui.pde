/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:674502:
  println("ADDED COFEE");
  numClicks ++;
  ingredients.add(new String("C"));
} //_CODE_:button1:674502:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:733988:
  println("ADDED MILK");
  numClicks ++ ;
  ingredients.add(new String("M"));
} //_CODE_:button2:733988:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:881086:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
  numClicks ++ ;
  ingredients.add(new String("E"));
} //_CODE_:button3:881086:

public void Menu1_click1(GButton source, GEvent event) { //_CODE_:Menu1:835275:
  draw_Menu1 = true; 
} //_CODE_:Menu1:835275:

public void Menu2_click1(GButton source, GEvent event) { //_CODE_:Menu2:897158:
  draw_Menu2 = true; 
} //_CODE_:Menu2:897158:

public void Menu3_click1(GButton source, GEvent event) { //_CODE_:Menu3:932059:
  draw_Menu3 = true; 
} //_CODE_:Menu3:932059:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:557600:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
  for (int i = ingredients.size() - 1; i >= 0; i--) {
    ingredients.remove(i);
  }
} //_CODE_:button4:557600:

public void button5_click1(GButton source, GEvent event) { //_CODE_:button5:368824:
  draw_welcome = false; 
} //_CODE_:button5:368824:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 1060, 88, 140, 90);
  button1.setText(" ADD COFFEE");
  button1.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(this, 1061, 226, 140, 100);
  button2.setText("ADD MILK");
  button2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(this, 1064, 368, 140, 100);
  button3.setText("ADD ESPRESSO");
  button3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button3.addEventHandler(this, "button3_click1");
  Menu1 = new GButton(this, 139, 499, 140, 100);
  Menu1.setText("BLACK");
  Menu1.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Menu1.addEventHandler(this, "Menu1_click1");
  Menu2 = new GButton(this, 496, 498, 140, 100);
  Menu2.setText("CAFE AU LAIT");
  Menu2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Menu2.addEventHandler(this, "Menu2_click1");
  Menu3 = new GButton(this, 905, 499, 140, 100);
  Menu3.setText("ESPRESSO");
  Menu3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Menu3.addEventHandler(this, "Menu3_click1");
  button4 = new GButton(this, 1063, 501, 140, 100);
  button4.setText("EMPTY CUP");
  button4.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button4.addEventHandler(this, "button4_click1");
  button5 = new GButton(this, 885, 483, 277, 102);
  button5.setText("Click here to start!");
  button5.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button5.addEventHandler(this, "button5_click1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GButton button2; 
GButton button3; 
GButton Menu1; 
GButton Menu2; 
GButton Menu3; 
GButton button4; 
GButton button5; 
