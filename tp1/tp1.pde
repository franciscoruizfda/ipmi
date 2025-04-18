//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- MOSTRAR LA IMAGEN A LA IZQ.

PImage img;
void setup() {

size (800, 400) ;
background (111, 181, 241) ;

loadImage ("autoretrato.png");
img = loadImage ("autoretrato.png") ;



//CUELLO ------

  fill(210, 177, 110);
  stroke(0);
  
    beginShape();
    //      x    y
  vertex(554, 210);  // Punto 1
  vertex(532, 341);  // Punto 2
  vertex(570, 440);  // Punto 3
  vertex(670, 410);  // Punto 4
  vertex(650, 240);  // Punto 5
  endShape(CLOSE);   // "CLOSE" conecta el último punto con el primero
  
  
// MANGA DERECHA ------
  fill(60);
  stroke(0);

  beginShape();
  //      x    y
  vertex(380, 356);  // Punto 1
  vertex(500, 312);  // Punto 2
  vertex(536, 300);  // Punto 3
  vertex(570, 410);  // Punto 4
  vertex(350, 420);  // Punto 5
  endShape(CLOSE);   // "CLOSE" conecta el último punto con el primero
  
  
// MANGA IZQUIERDA ------


  fill(60);
  stroke(0);

  beginShape();
  //      x    y
  vertex(650, 400);  // Punto 1
  vertex(655, 330);  // Punto 2
  vertex(724, 361);  // Punto 3
  vertex(800, 410);  // Punto 4
  endShape(CLOSE);   // "CLOSE" conecta el último punto con el primero
  
  
  
  translate (-58, -8) ;
  scale (1.1, 1.1) ;
  
  
// CIRCULOS PELO ATRAS DE LA CABEZA
pushStyle () ;

    fill (60) ;
    strokeWeight( 0 );
 ellipse (547, 182, 40, 40) ;
 ellipse (543, 163, 40, 40) ;
 ellipse (560, 141, 40, 40) ;
 ellipse (538, 125, 40, 40) ;
 ellipse (571, 76, 43, 43) ;
 ellipse (607, 67, 45, 45) ;
 ellipse (640, 60, 45, 45) ;
 ellipse (670, 82, 45, 45) ;
 ellipse (559, 100, 43, 43) ;
 ellipse (614, 103, 43, 43) ;
 ellipse (594, 91, 43, 43) ;
 ellipse (636, 89, 43, 43) ;
 ellipse (665, 87, 43, 43) ;
 ellipse (696, 106, 43, 43) ;
 ellipse (702, 132, 43, 43) ;
 ellipse (696, 155, 43, 43) ;

popStyle() ;

  
// OREJA DERECHA



  fill(210, 177, 110);
  stroke(0);

  beginShape();
  //      x    y
  vertex(546, 140);  // Punto 1
  vertex(570, 140);  // Punto 2
  vertex(567, 168);  // Punto 3
  vertex(547, 168);  // Punto 4
  endShape(CLOSE);   // "CLOSE" conecta el último punto con el primero
  
  // AURICULAR (MINI)
  fill(55);
  ellipse (555, 162, 7, 7) ;

  


// CARA ------

translate (0, -22) ; //IMPORTANTE QUE TODO LO DE ABAJO ESTA AFECTADO A ESTE TRANSLATE (ANOTACIÓN PARA MI)

fill(229, 197, 132);
  stroke(0);

  beginShape();
  //      x    y
  vertex(550, 236);  // Punto 1
  vertex(569, 118);  // Punto 2
  vertex(693, 120);  // Punto 3
  vertex(689, 239);  // Punto 4
  vertex(645, 291);  // Punto 5
  endShape(CLOSE);   // "CLOSE" conecta el último punto con el primero
  
  
//CIRCULOS PELO FRENTE DE LA CARA

pushStyle () ;

 fill (60) ;
 strokeWeight( 0 );
    
ellipse (570, 120, 40, 40) ;
ellipse (592, 110, 40, 40) ;
ellipse (603, 110, 40, 40) ;
ellipse (620, 112, 40, 40) ;
ellipse (620, 112, 40, 40) ;
ellipse (650, 114, 40, 40) ;
ellipse (670, 114, 40, 40) ;
ellipse (680, 117, 40, 40) ;
   
popStyle() ;

// CEJAS

pushStyle () ;

fill (60) ;
rect(581, 147, 18, 6, 20);
rect(646, 147, 18, 6, 20);

popStyle ();


//OJOS

arc( 593, 160, 19, 8, 0, 90) ;
arc( 657, 160, 19, 8, 0, 90) ;


pushStyle ();

fill ( 60 ) ;
ellipse (592, 160, 7, 7) ;
ellipse (656, 160, 7, 7) ;

popStyle ();

//NARIZ

pushStyle ();
strokeWeight (1) ;
line (635, 178,  642, 200) ;
line (627, 196,  642, 200) ;
popStyle ();


//BOCA

arc( 635, 230, 35, 10, 0, 90) ;
line (617, 230,  651, 230) ;

}

//GUIAS DEL MOUSE PARA PODER COLOCAR MEJOR LAS FORMAS

void draw(){
   image (img, 0, 0);
   
  println ("X:") ;
  println (mouseX) ;
  println ("Y:") ;
  println (mouseY) ;

}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- BASE
