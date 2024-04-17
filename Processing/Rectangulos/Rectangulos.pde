//Le doy tamaño al lienzo
size(400, 400);
//Le doy color de fondo
background(#000000);
int separacion = 50;
int iteraciones = 400 / separacion;
for (int i = 0; i < iteraciones; i++){
  rect(separacion * i, 0 , 25, 400);
//rect(separacion * i, 30, 30, 400);
}
