//Area de variables globales
int anchoLienzo = 900;
int altoLienzo = 700;

int incremento = 10;

int contadorFrames = 0;

int diametro = 20;
boolean creciendo = true;

void setup(){ //esta funcion se ejecuta una vez al inicio del programa
  size(900, 700);
}


void draw(){ //esta funcion se ejecuta cada frame  y redibuja el lienzo
  background(#C0D6E8);
  stroke(#A34343);
  
  int posY = contadorFrames % altoLienzo;
  int posX = contadorFrames % anchoLienzo;
  
  line(0, posY, mouseX, mouseY);
  line(posX, altoLienzo, mouseX, mouseY);
  line(anchoLienzo, posY, mouseX, mouseY);
  line(posX, 0, mouseX, mouseY);
  
  stroke(#DC6B19);
  line(0, altoLienzo - posY, mouseX, mouseY);
  line(anchoLienzo - posY, altoLienzo, mouseX, mouseY);
  line(anchoLienzo, altoLienzo - posY, mouseX, mouseY);
  line(anchoLienzo - posX, 0, mouseX, mouseY);
  
  circle(mouseX, mouseY,diametro);
  if(creciendo)
  {//esta creciendo
    diametro++;
  }
  else
  {//esta decreciendo
    diametro--;
  }
  
  if (diametro > 100)//llego a su tamaño max
  {
    creciendo = false;
  }
  
  if(diametro < 20)//llego a su tamaño minimo
  {
    creciendo = true;
  }
  
  contadorFrames+=incremento;
  println("Redibujando mediante draw" + contadorFrames);

}
