/* TP NUMERO 2 - VARIABLES Y CONDICIONES
  FRANCISCO RUIZ - COMISION 3
*/


// VARIABLES GENERALES
PImage portada;
PImage diapo1;
PImage diapo2; 
int ancho = 64;
int alto = 48;
int tamañotexto = 10;
int desplazamiento = 0;
boolean empujar = false;
boolean mostrardiapo2 = false;
int aparece = 0; 
int textoY;
boolean subirtexto = false;
int tiempodiapo2 = 0;


//CONFIGS GENERALES

void setup() {
  size(640, 480);
  portada = loadImage("serpiente1.png");
  diapo1 = loadImage("serpiente2.png");
  diapo2 = loadImage("serpiente3.png");
  textAlign(CENTER, CENTER);
  textoY = height + 50;
}

void draw() {
  background(255);

  //ANIMACION DIAPOSITIVA 1

  if (ancho >= width && alto >= height && tamañotexto >= 25) {
    if (!empujar) {
      empujar = true;
      aparece = frameCount;
    }
  }

  if (empujar && desplazamiento < width) {
    desplazamiento += 2 ;
  }

  if (empujar && !mostrardiapo2) {
    int diapo1X = -diapo1.width + desplazamiento;
    image(diapo1, diapo1X, 0);
    textAlign(LEFT, CENTER);
    fill(255); 
    textSize(20); 
    text("La serpiente muestra respuestas del \n publico a preguntas hechas por el \n estudio sobre la privacidad en redes sociales.", 180, height / 2);
    
    
    //ANIMACION DIAPOSITIVA 2

    if (frameCount - aparece > 600) {
      mostrardiapo2 = true;
      subirtexto = true;
      tiempodiapo2 = frameCount;
    }
  }

  if (mostrardiapo2) {
    image(diapo2, 0, 0, width, height);
    if (subirtexto) {
      if (textoY > height / 1.5) {
        textoY -= 2;
      } else {
        textoY = height / 2;
        subirtexto = false;
      }
    }
    fill(255); 
    textSize(20);
    textAlign(CENTER, CENTER);
    text("La instalación se inspira en el concepto de las sociedades de control \n propuesto por Gilles Deleuze, donde la serpiente simboliza \n formas de poder que seducen y controlan sin recurrir a la violencia. ", width / 2, textoY);
  }

   //ANIMACION PORTADA (PRIMERA PAGINA)

  int x = (width - ancho) / 2 + desplazamiento;
  int y = (height - alto) / 2;
  image(portada, x, y, ancho, alto);

  textAlign(CENTER, CENTER);
  fill(255); 
  textSize(tamañotexto);
  text("Los anillos de la serpiente es una \n obra electronica desarrollada por el \n estudio biopus en Argentina ", width / 2 + desplazamiento, height / 2);

  if (ancho < width) ancho += 4;
  if (alto < height) alto += 3;
  if (tamañotexto < 25) tamañotexto += 1;

  // CREAR BOTON DE REINICIO
  
  
  // Dibujar botón de reinicio
  fill(255, 100, 0);
  rect(width-120, height-60, 100, 40, 10);
  fill(255);
  text("Reiniciar", width-70, height-40);
}

void mousePressed() {
  // Verificar si se hizo clic en el botón de reinicio
  if (mouseX > width-120 && mouseX < width-20 && 
      mouseY > height-60 && mouseY < height-20) {
    // Reiniciar presentación
    ancho = 64;
    alto = 48;
    tamañotexto = 10;
    desplazamiento = 0;
    empujar = false;
    mostrardiapo2 = false;
    aparece = 0;
    textoY = height + 50;
    subirtexto = false;
    tiempodiapo2 = 0;
  }
}
