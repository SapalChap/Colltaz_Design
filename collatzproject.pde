int maxN = 33;      
float len = 6;       
float angle = 0.6;  

void setup() {
  size(800, 800);
  background(0);
  smooth();
  strokeWeight(0.5);
  
  for (int i = 1; i <= maxN; i++) {

    if (i == 6 || i == 9 || i == 5 || i == 12 || i == 14 || i == 15 || i == 18 
    || i == 21 || i == 22 || i == 25 || i == 24 || i == 26 || i == 20 || i == 23 || i == 27 || i == 29 || i == 17 
    || i == 30 || i == 31 
    ) {
  continue;
  }
  
 
    stroke(255);
    pushMatrix();
      
      if (i > 16 && i < 25){
        translate(width/2, height-345);
      } else if (i >= 25){
        translate((width/2)+250, height-200); 
      } else {
      translate(width/2, height-200);
    }
      scale(4);
      drawCollatz(i);
    popMatrix();
  }
  println("Done!");
}

void draw() {
  //dont need this
}

void drawCollatz(int n) {
  
  if (n > 16){
    //no line
     } 
  else {
  line(0,0,0, -3 * len) ;
}
  
  translate(0,-3 *  len);
  
  while (n != 1) {
    if (n % 2 == 0) {
      n = n / 2;
      
      rotate(angle+0.1);
    } else {
      n = (3 * n + 1) / 2;
      rotate(-angle-0.5);
    }
    line(0, 0, 0, -len);
    translate(0, -len);
  }
}
