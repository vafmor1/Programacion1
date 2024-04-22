//Area de variables globales
int centroX;
int centroY;

int anchoLienzo = 900;
int altoLienzo = 700;

int incremento = 10;

int contadorFrames = 0;

void setup(){ //esta funcion se ejecuta una vez al inicio del programa
  size(900, 700);
  
  centroX = anchoLienzo / 2;
  centroY = altoLienzo / 2;
  
  println("Centro en: " + centroX + ", " + centroY);
}


void draw(){ //esta funcion se ejecuta cada frame  y redibuja el lienzo
  background(#C0D6E8);
  stroke(#A34343);
  
  int posY = contadorFrames % altoLienzo;
  int posX = contadorFrames % anchoLienzo;
  //int pos3 = contadorFrames % anchoLienzo;
  
  line(0, posY, centroX, centroY);
  line(posX, altoLienzo, centroX, centroY);
  line(anchoLienzo, posY, centroX, centroY);
  line(posX, 0, centroX, centroY);
  
  circle(centroX, centroY,20);
  contadorFrames+=incremento;
  println("Redibujando mediante draw" + contadorFrames);

}
