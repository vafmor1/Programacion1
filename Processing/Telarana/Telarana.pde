  //Le doy tamaño al lienzo
size(800, 800);
background(#000000);

int centroX = 400;
int centroY = 400;
int separacion = 80;
int sep45grados = 56;

stroke(#FFFFFF);
line(0, 0, 800, 800);
line(0, 800, 800,0);
line(centroX, 0, centroX, 800);
line(0, centroY, 800, centroY);


for(int i= 1; i < 5; i++) {
  int x = centroX + separacion * i;
  int y = centroY + separacion * i;
  
  int xInterm = centroX + sep45grados * i;
  int yInterm = centroY + sep45grados * i;
  
  line(x, centroY, xInterm, yInterm);
  line(xInterm, yInterm, centroX, y);
  line(centroX, y, centroX - sep45grados * i, centroY + sep45grados * i);
  line(centroX - sep45grados * i, centroY + sep45grados * i, centroX - separacion * i , centroY);
  line(centroX - separacion * i , centroY, centroX - sep45grados * i, centroY - sep45grados * i);
  line(centroX - sep45grados * i, centroY - sep45grados * i, centroX, centroY - separacion * i );
  line(centroX, centroY - separacion * i, centroX + sep45grados * i, centroY - sep45grados * i );
  line(centroX + sep45grados * i, centroY - sep45grados * i, centroX + separacion * i, centroY);
}
