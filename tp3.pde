/*
TP NUMERO 3 - FRANCISCO RUIZ - COMISION 3
"OpArt con Funciones y Ciclo For"
Link del video explicativo: https://youtu.be/5LhPYma8SZY?si=n6VDSLtZ6jzJctqK
*/

// Variables
int columnas = 10;
int filas = 10;
int gridSize = 40;
boolean invertColors = false;
boolean showPattern = true;
boolean useRed = false;

PImage ImagenOriginal;

void setup() {
  size(800, 400);
  ImagenOriginal = loadImage("F_42.png");
}

void draw() {
  background(255);

  // La imagen que va a la izquierda
  image(ImagenOriginal, 0, 0, width / 2, height);

  // Envia la animacion a la derecha
  if (showPattern) {
    drawPattern(width / 2, 0, columnas, filas, gridSize);
  }
}

// Dibuja una animacion cuadrada con un circulo
void drawCell(float x, float y, float s, boolean invert) {
  if (invert) {
    fill(255);
    rect(x, y, s, s);
    fill(useRed ? color(255, 0, 0) : 0);
    ellipse(x + s / 2, y + s / 2, s / 2, s / 2);
  } else {
    fill(useRed ? color(255, 0, 0) : 0);
    rect(x, y, s, s);
    fill(255);
    ellipse(x + s / 2, y + s / 2, s / 2, s / 2);
  }
}

// Retorna si la animacion esta invertida
boolean isInverted(int i, int j) {
  return (i + j) % 2 == 0;
}

// Dibuja la animacion a la derecha
void drawPattern(int offsetX, int offsetY, int cols, int rows, int size) {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = offsetX + i * size;
      int y = offsetY + j * size;
      if (x < width) {
        boolean inv = invertColors ? !isInverted(i, j) : isInverted(i, j);
        drawCell(x, y, size, inv);
      }
    }
  }
}

// Acciones con teclas
void keyPressed() {
  if (key == 'i' || key == 'I') {
    invertColors = !invertColors;
  } else if (key == 'r' || key == 'R') {
    resetVariables();
  } else if (key == 'h' || key == 'H') {
    showPattern = !showPattern;
  } else if (key == 't' || key == 'T') {
    useRed = !useRed;
  }
}

// Click derecho para cambiar el tamaño
void mousePressed() {
  if (mouseX > width / 2) {
    float d = dist(mouseX, mouseY, 3 * width / 4, height / 2);
    gridSize = int(map(d, 0, width / 2, 10, 80));
  }
}

// Vuelve todo a como era cuando empezo
void resetVariables() {
  gridSize = 40;
  invertColors = false;
  showPattern = true;
  useRed = false;
}
