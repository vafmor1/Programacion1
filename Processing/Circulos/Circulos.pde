//Le doy tamaño al lienzo
size(400, 400);
//Le doy color de fondo
background(#000000);
int separacion = 60;
int iteraciones = 400/separacion;
for (int i = 0; i < iteraciones; i++) {
  circle(200,200, 400 - separacion * i);
  if(i%2 == 0){
    fill(#000000);
  }else{
    fill(#FFFFFF);
  }
}

//circle(200 - (separacion * i), 200 - separacion * i, separacion);
