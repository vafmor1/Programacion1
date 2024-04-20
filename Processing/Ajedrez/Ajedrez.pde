//Le doy tamaño al lienzo
size(400, 400);
//Le doy color de fondo
background(#000000);

  int filas = 8;
  int columnas = 8;
  int tamaño = 400 / columnas;
  
  // Ciclo para iterar sobre las filas
  for (int i = 0; i < filas; i++) {
    // Ciclo para iterar sobre las columnas
    for (int j = 0; j < columnas; j++) {
      // Calcular el color del cuadro basado en la suma de los índices
      color cuadroColor;
      if ((i + j) % 2 == 0) {
        cuadroColor = (#FFFFFF); // Blanco
      } else {
        cuadroColor = (#000000);   // Negro
      }
      fill(cuadroColor);
      // Dibujar el cuadro
      rect(j * tamaño, i * tamaño, tamaño, tamaño);
      //rect(a, b, c, d)
      //rect(x, y, ancho, alto)
    }
  }
