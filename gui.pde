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

public void addC(GButton source, GEvent event) { //_CODE_:button1:674502:
  //println("ADDED COFEE");
  numClicks ++;
  ingredients.add(new String("C"));
} //_CODE_:button1:674502:

public void addM(GButton source, GEvent event) { //_CODE_:button2:733988:
  //println("ADDED MILK");
  numClicks ++ ;
  ingredients.add(new String("M"));
} //_CODE_:button2:733988:

public void addE(GButton source, GEvent event) { //_CODE_:button3:881086:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
  numClicks ++ ;
  ingredients.add(new String("E"));
} //_CODE_:button3:881086:

public void emptyCup(GButton source, GEvent event) { //_CODE_:button4:787928:
  for (int i = ingredients.size() - 1; i >= 0; i--) {
    ingredients.remove(i);
  }
} //_CODE_:button4:787928:

public void start_buttonclick1(GButton source, GEvent event) { //_CODE_:start_button:829370:
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
  draw_welcome = false; 
} //_CODE_:start_button:829370:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 1060, 88, 140, 90);
  button1.setText(" ADD COFFEE");
  button1.addEventHandler(this, "addC");
  button2 = new GButton(this, 1061, 226, 140, 100);
  button2.setText("ADD MILK");
  button2.addEventHandler(this, "addM");
  button3 = new GButton(this, 1060, 370, 140, 100);
  button3.setText("ADD ESPRESSO");
  button3.addEventHandler(this, "addE");
  button4 = new GButton(this, 1062, 508, 140, 90);
  button4.setText("EMPTY CUP");
  button4.addEventHandler(this, "emptyCup");
  start_button = new GButton(this, 885, 483, 277, 102);
  start_button.setText("Click here to start!");
  start_button.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  start_button.addEventHandler(this, "start_buttonclick1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GButton start_button; 
