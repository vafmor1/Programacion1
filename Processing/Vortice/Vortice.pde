//Le doy tamaño al lienzo
size(700, 700);
//Le doy color de fondo
background(#000000);
stroke(#00FF00);
int separacion = 20;
int iteraciones = 700 / separacion;
for (int i = 0; i < iteraciones; i++){
  // x1   y1       x2        y2
line(0, separacion * i, separacion * (i+1), 700);
}
