 //declare bacteria variables here 
 Seal [] marisa;
 void setup()   
 {     
 	//initialize bacteria variables here
 size(500, 500); 
 marisa = new Seal [1000];
 for (int i = 0; i < marisa.length; i++)
   marisa [i] = new Seal();
 }   
 void draw()   
 { 
  background(#CBEDF0);
 	//move and show the bacteria
 for (int i = 0; i < marisa.length; i++)
 {
   marisa[i].show();
   marisa[i].walk();
 }
 }  
 class Seal    
 {     
 	int myX, myY;
  int myColor;
 Seal()
 {
   myX = myY = 250;
   myColor = color(255);
 }
   void walk()
 {
    myX = myX + (int) (Math.random()*7)-3;
    myY = myY + (int) (Math.random()*7)-3;
 }
 void show()
 {
   noStroke();
   fill(myColor);
   ellipse(myX, myY, 40, 30);
   ellipse(myX-20, myY+10, 15, 10);
   ellipse(myX+20, myY+10, 15, 10);
   fill(0);
   ellipse(myX-10, myY-5, 5, 5);
   ellipse(myX+10, myY-5, 5, 5);
   ellipse(myX, myY, 5, 2);   
 }
   
 }    
