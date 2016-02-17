/*

The Ball Game
by Krithika and Bette

*/

void setup()
{
  size(700,700);
  background(0);
}
float posX = 350;
float posY = 0;
void draw()
{
  background(0);
  fill(255);
  fill(255);
  ellipse (posX, posY, 60,60);
  
  if(mouseX<370 && mouseX>330)
  {
    posY = posY + 1;
    //posX = 350;
  }
  if (mouseX<330)
  {
    posX = posX - 5;
    posY = posY +5;
  }
  if(mouseX>370)
  {
    posX = posX + 5;
    posY = posY + 5;
  }
}