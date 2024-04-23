int posX = 0;
int posY = 0;
int radio = 0;
int diametro = 30;
int velocidadX = 4;
int velocidadY = 2;


void setup()
{
  size(600,500);
  radio = diametro / 2;
}

void draw()
{
  background(#C0D6E8);
  ellipse(posX,posY ,diametro,diametro);
  posX = posX + velocidadX;
  posY = posY + velocidadY;
  
  if(posX > width - radio)
  {
    velocidadX = -4;
  }
  if(posX < radio)
  {
    velocidadX = 4;
  }
  
    if(posY > height - radio)
  {
    velocidadY = -2;
  }
  if(posY < radio)
  {
    velocidadY = 2;
  }
}
