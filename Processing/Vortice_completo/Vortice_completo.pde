//Le doy tamaño al lienzo
size(700, 700);
//Le doy color de fondo
background(#000000);
stroke(#00FF00);
int separacion = 70;
int iteraciones = 700 / separacion;
for (int i = 0; i < iteraciones; i++){
  //   x1   y1       x2        y2
  line(0, separacion * i, separacion * (i+1), 700);
  line(0, 700 - (separacion * i), separacion * (i+1), 0);
  line(separacion * i, 0, 700, separacion * (i+1));
  //line(separacion * (i+1), 0, 700, 700 - (separacion * i));
  line(700, separacion * i, 700 - separacion * (i+1), 700);
  //line(700, 700, 700 - separacion * i, 700);
  //line(700, separacion * i,700,separacion * (i+1));
  //line(700, 0, 700 - (separacion * (i+1)), 700);
}
